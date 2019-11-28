import React from 'react';
import Gif from './Gif';

const Gifs = ({gifs, handleOnClick, clicked}) => {
  const GifList = gifs.map(gif => {
    return(
      <Gif
        id={gif.id}
        imageUrl={gif.images.downsized_large.url}/>
    );
  })

  return(
    <div className="gif-list">
      { GifList }
    </div>
  )
}

export default Gifs;
