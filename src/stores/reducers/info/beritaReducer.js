let berita = {
    data: [],
    loading: true
}

export const beritaReducer = (state=berita, action) => {
    switch (action.type) {
        case "TAMBAH_BERITA":
            action.payload.forEach(item => {
                berita.data.push(item)
            })

            return berita

        case "BACA_BERITA":
            return state

        case "RESET_BERITA":
            berita.data = []

            return berita

        case "LOADING":
            berita.loading = true

            return berita

        case "UNLOADING":
            berita.loading = false

            return berita

        default:
            return berita
    }
}