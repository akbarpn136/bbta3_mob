export const fetchBerita = (id=1) => {
    return async (dispatch, getState) => {
        const body = await fetch(`http://bbta3.bppt.go.id/wp-json/wp/v2/posts/?_embed&page=${id}`, {
            headers: {
                Accept: 'application/json',
                'Content-Type': 'application/json',
            },
        })
        const data = await body.json()

        dispatch(setBerita(data))
    }
}

export const setBerita = (data) => {
    return {
        type: "TAMBAH_BERITA",
        payload: data
    }
}

export const bacaBerita = () => {
    return {
        type: 'READ_BERITA'
    }
}