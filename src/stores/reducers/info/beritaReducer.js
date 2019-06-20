let berita = []

export const beritaReducer = (state=berita, action) => {
    switch (action.type) {
        case "TAMBAH_BERITA":
            action.payload.forEach(item => {
                berita.push(item)
            })

            return berita

        case "BACA_BERITA":
            return state

        case "RESET_BERITA":
            berita = []
            return berita

        default:
            return berita
    }
}