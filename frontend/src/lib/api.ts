export async function fetcher(url: string, options = {}) {
    let response;
    if (!options) {
        response = await fetch(url);
    } else {
        response = await fetch(url, options);
    }

    if (!response.ok) {
        throw new Error('Failed to fetch data');
    }
    const data = await response.json();

    return data;
}