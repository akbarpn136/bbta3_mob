export const fetchKeahlian = () => {
    return async (dispatch, getState) => {
        const body = await fetch('http://bbta3.bppt.go.id/wp-json/wp/v2/pages/?_embed&page=1&categories=2&order=asc', {
            headers: {
                Accept: 'application/json',
                'Content-Type': 'application/json',
            },
        })
        const data = await body.json()
        dispatch(setKeahlian(data))
    }
}

export const setKeahlian = (data) => {
    return {
        type: "SET_KEAHLIAN",
        payload: data
    }
}
