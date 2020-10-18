#include "types.h"
#include "unkStruct.h"
#include "code_801DAAE0.h"

// TODO: C or C++

extern "C" {

// unkStruct gUnk8063F2D0(1, 4, 0);
// TODO: move to headers
extern MEMHeapHandle lbl_8063E8E8;
extern MEMHeapHandle lbl_8063E8EC;
extern u8 lbl_8063F2D6;
extern u8 lbl_8063F2D7;
extern MEMHeapHandle lbl_8063F2D8;
extern u16 lbl_8063F2DC;

void *memset(void *s, int c, size_t n);
MEMHeapHandle MEMCreateExpHeapEx(void* p1, u32 p2, u16 p3);
u16 MEMSetGroupIDForExpHeap(MEMHeapHandle heap, u16 groupID);
void *MEMAllocFromExpHeapEx(MEMHeapHandle heap, u32 size, int alignment);
u32 MEMResizeForMBlockExpHeap(MEMHeapHandle heap, void *memBlock, u32 size);
void MEMFreeToExpHeap(MEMHeapHandle heap, void *memBlock);
u32 MEMGetSizeForMBlockExpHeap(const void *memBlock);
u32 MEMGetTotalFreeSizeForExpHeap(MEMHeapHandle heap);
u16 MEMGetGroupIDForMBlockExpHeap(const void *memBlock);
//void MEMVisitAllocatedForExpHeap(MEMHeapHandle heap, MEMHeapVisitor visitor, u32 userParam);


unkClass gUnk804912B0[16];

unkClass* func_801DAAE0(void)
{
    for (u32 i = 0; i < 16; i++)
        if (gUnk804912B0[i].unk0 == 0)
            return &gUnk804912B0[i];
    return NULL;
}

BOOL func_801DAB28(void)
{
    return lbl_8063F2D6;
}

void func_801DAB30(void)
{
    memset(gUnk804912B0, 0, sizeof(gUnk804912B0));
    lbl_8063F2D8 = 0;
    lbl_8063F2DC = 0;
    lbl_8063F2D6 = 1;
    lbl_8063F2D7 = 0;
}

MEMHeapHandle func_801DAB78(void* p1, u32 p2, u16 p3)
{
    if (!func_801DAB28())
        return 0;
    unkClass* r31 = func_801DAAE0();
    if (!r31)
        return 0;
    MEMHeapHandle r3 = MEMCreateExpHeapEx(p1, p2, p3);
    r31->unk0 = 1;
    r31->unk4 = r3;
    r31->unk8 = p2;
    return r3;
}

MEMHeapHandle func_801DAC0C(void)
{
    return lbl_8063F2D8;
}

MEMHeapHandle func_801DAC14(MEMHeapHandle p1)
{
    MEMHeapHandle r3 = func_801DAC0C();
    lbl_8063F2D8 = p1;
    return r3;
}

u16 func_801DAC44(u16 p1)
{
    u16 r31 = lbl_8063F2DC;
    lbl_8063F2DC = p1;
    MEMSetGroupIDForExpHeap(lbl_8063E8E8, (u16)(p1 & 0xff));
    MEMSetGroupIDForExpHeap(lbl_8063E8EC, (u16)(lbl_8063F2DC & 0xff));
    return r31;
}

u16 func_801DAC90(MEMHeapHandle heap, u16 groupID)
{
    return MEMSetGroupIDForExpHeap(heap, groupID);
}

void* func_801DAC94(MEMHeapHandle heap, u32 size)
{
    return MEMAllocFromExpHeapEx(heap, size, 32);
}

void* lbl_801DAC9C(MEMHeapHandle heap, u32 size, int fill)
{
    void* r31 = func_801DAC94(heap, size);
    if (!r31)
        return NULL;
    memset(r31, fill, size);
    return r31;
}

void* func_801DAD00(MEMHeapHandle heap, u32 size)
{
    return lbl_801DAC9C(heap, size, 0);
}

void* func_801DAD08(MEMHeapHandle heap, u32 size, int alignment)
{
    return MEMAllocFromExpHeapEx(heap, size, alignment);
}

void* func_801DAD0C(MEMHeapHandle heap, u32 size, int alignment)
{
    return MEMAllocFromExpHeapEx(heap, size, (alignment > 0) ? -alignment : alignment);
}

BOOL func_801DAD1C(MEMHeapHandle heap, void *memBlock, u32 size)
{
    return MEMResizeForMBlockExpHeap(heap, memBlock, size) != 0;
}

void func_801DAD48(MEMHeapHandle heap, void *memBlock)
{
    if (memBlock)
        MEMFreeToExpHeap(heap, memBlock);
}

u32 func_801DAD58(u32, const void *memBlock)
{
    return MEMGetSizeForMBlockExpHeap(memBlock);
}

u32 func_801DAD60(MEMHeapHandle heap)
{
    return MEMGetTotalFreeSizeForExpHeap(heap);
}

void *func_801DAD64(size_t size)
{
    return func_801DAC94(func_801DAC0C(), size);
}

void *func_801DAD98(u32 size)
{
    return func_801DAD00(func_801DAC0C(), size);
}

void *func_801DADCC(u32 size, int alignment)
{
    return func_801DAD08(func_801DAC0C(), size, alignment);
}

void *func_801DAE10(u32 size, int alignment)
{
    return func_801DAD08(func_801DAC0C(), size, (alignment > 0) ? -alignment : alignment);
}

BOOL func_801DAE60(void *memBlock, u32 size)
{
    return func_801DAD1C(func_801DAC0C(), memBlock, size);
}

void func_801DAEA4(void *memBlock)
{
    if (memBlock)
        func_801DAD48(func_801DAC0C(), memBlock);
}

u32 func_801DAEE0(const void *memBlock)
{
    if (memBlock == NULL)
        return 0;
    return MEMGetSizeForMBlockExpHeap(memBlock);
}

u32 func_801DAEF8(void)
{
    return func_801DAD60(func_801DAC0C());
}

void lbl_801DAF1C(void *memBlock, MEMHeapHandle, u32 p3)
{
    if (MEMGetGroupIDForMBlockExpHeap(memBlock) == ((unkClass2 *)p3)->groupID)
        MEMFreeToExpHeap(((unkClass2 *)p3)->heap, memBlock);
}

/*
func_801DAF70
{
    lbl_801DAF1C
}
*/




















}
