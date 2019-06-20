let berita = []

export const beritaReducer = (state = berita, action) => {
    switch (action.type) {
        case "TAMBAH_BERITA":
            state.push(action.payload)

            return state

        case "BACA_BERITA":
            return state

        default:
            return berita
    }
}