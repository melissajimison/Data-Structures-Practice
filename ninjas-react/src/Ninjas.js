import React from 'react';

const Ninjas = ({ninjas, deleteNinja}) => {
  const NinjaList = ninjas.map(ninja => {
    return(
      <div className="ninja" key={ninja.id}>
        <div> Name: { ninja.name } </div>
        <div> Age: { ninja.age } </div>
        <div> Belt: { ninja.belt } </div>
        <button onClick={() => {deleteNinja(ninja.id)}}> Delete Ninja</button>
      </div>
    );
  })

  return(
    <div className="ninja-list">
      { NinjaList }
    </div>
  )
}

export default Ninjas;
