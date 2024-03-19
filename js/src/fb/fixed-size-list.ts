// automatically generated by the FlatBuffers compiler, do not modify

import * as flatbuffers from 'flatbuffers';

export class FixedSizeList {
  bb: flatbuffers.ByteBuffer|null = null;
  bb_pos = 0;
  __init(i:number, bb:flatbuffers.ByteBuffer):FixedSizeList {
  this.bb_pos = i;
  this.bb = bb;
  return this;
}

static getRootAsFixedSizeList(bb:flatbuffers.ByteBuffer, obj?:FixedSizeList):FixedSizeList {
  return (obj || new FixedSizeList()).__init(bb.readInt32(bb.position()) + bb.position(), bb);
}

static getSizePrefixedRootAsFixedSizeList(bb:flatbuffers.ByteBuffer, obj?:FixedSizeList):FixedSizeList {
  bb.setPosition(bb.position() + flatbuffers.SIZE_PREFIX_LENGTH);
  return (obj || new FixedSizeList()).__init(bb.readInt32(bb.position()) + bb.position(), bb);
}

/**
 * Number of list items per value
 */
listSize():number {
  const offset = this.bb!.__offset(this.bb_pos, 4);
  return offset ? this.bb!.readInt32(this.bb_pos + offset) : 0;
}

static startFixedSizeList(builder:flatbuffers.Builder) {
  builder.startObject(1);
}

static addListSize(builder:flatbuffers.Builder, listSize:number) {
  builder.addFieldInt32(0, listSize, 0);
}

static endFixedSizeList(builder:flatbuffers.Builder):flatbuffers.Offset {
  const offset = builder.endObject();
  return offset;
}

static createFixedSizeList(builder:flatbuffers.Builder, listSize:number):flatbuffers.Offset {
  FixedSizeList.startFixedSizeList(builder);
  FixedSizeList.addListSize(builder, listSize);
  return FixedSizeList.endFixedSizeList(builder);
}
}
