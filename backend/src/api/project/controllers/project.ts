/**
 * project controller
 */

import { factories } from '@strapi/strapi'


// export default factories.createCoreController('api::project.project');
// Кастомное изменение контролера. Чтобы данные получались не по [id], а по [slug] (коду элемента)
export default factories.createCoreController('api::project.project', ({strapi}) => ({
  async findOne(ctx) {
    const { id: code } = ctx.params;
    const { query } = ctx;
    if (!query.filters) query.filters = {}
    query.filters.code = { '$eq': code }
    const entity = await strapi.service('api::project.project').find(query);
    const { results } = await this.sanitizeOutput(entity, ctx);

    return this.transformResponse(results[0]);
  }
}));
