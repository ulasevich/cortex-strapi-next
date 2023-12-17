'use client';

import { motion } from 'framer-motion';

type SectionHeadingProps = {
    children: string;
};

const SectionHeading = (props: SectionHeadingProps) => {
    const [headingFirstWord, ...headingRest] = props.children.split(' ');
    const headingRemainder = headingRest.join(' ');

    return (
        <motion.h2
            className="text-5xl md:text-7xl text-neutral-300 font-bold mb-[0.5em] text-center"
            initial={{ opacity: 0 }}
            whileInView={{ opacity: 1 }}
            viewport={{ once: true }}
            transition={{
                duration: 0.6,
            }}
        >
            {headingFirstWord} <span className="text-amber-400">{headingRemainder}</span>
        </motion.h2>
    );
};

export default SectionHeading;
