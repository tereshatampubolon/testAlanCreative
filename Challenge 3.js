    const count_vowels = (str) => {
    const vowels = str.match(/[aiueo]/gi);
    
    return vowels ? vowels.length : 0 ;
    };

    console.log(count_vowels('banananana'));
    console.log(count_vowels('nana'));