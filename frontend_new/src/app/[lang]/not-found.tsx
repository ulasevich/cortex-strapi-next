import Link from 'next/link';

export default function NotFound() {
    return (
        <div>
            <h1 className="text-2xl font-bold leading-7 text-gray-900 sm:truncate sm:text-3xl sm:tracking-tight">Page404</h1>
            Page404
            <p>Could not find requested resource</p>
            <Link href="/">Return Home 123</Link>
        </div>
    )
}