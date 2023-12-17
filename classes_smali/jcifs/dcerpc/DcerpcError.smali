.class public interface abstract Ljcifs/dcerpc/DcerpcError;
.super Ljava/lang/Object;
.source "DcerpcError.java"


# static fields
.field public static final DCERPC_FAULT_ACCESS_DENIED:I = 0x5

.field public static final DCERPC_FAULT_CANT_PERFORM:I = 0x6d8

.field public static final DCERPC_FAULT_CODES:[I

.field public static final DCERPC_FAULT_CONTEXT_MISMATCH:I = 0x1c00001a

.field public static final DCERPC_FAULT_INVALID_TAG:I = 0x1c000006

.field public static final DCERPC_FAULT_MESSAGES:[Ljava/lang/String;

.field public static final DCERPC_FAULT_NDR:I = 0x6f7

.field public static final DCERPC_FAULT_OP_RNG_ERROR:I = 0x1c010002

.field public static final DCERPC_FAULT_OTHER:I = 0x1

.field public static final DCERPC_FAULT_PROTO_ERROR:I = 0x1c01000b

.field public static final DCERPC_FAULT_UNK_IF:I = 0x1c010003


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .line 1
    const/16 v0, 0x9

    .line 3
    new-array v0, v0, [I

    .line 5
    fill-array-data v0, :array_22

    .line 8
    sput-object v0, Ljcifs/dcerpc/DcerpcError;->DCERPC_FAULT_CODES:[I

    .line 10
    const-string v1, "DCERPC_FAULT_OTHER"

    .line 12
    const-string v2, "DCERPC_FAULT_ACCESS_DENIED"

    .line 14
    const-string v3, "DCERPC_FAULT_CANT_PERFORM"

    .line 16
    const-string v4, "DCERPC_FAULT_NDR"

    .line 18
    const-string v5, "DCERPC_FAULT_INVALID_TAG"

    .line 20
    const-string v6, "DCERPC_FAULT_CONTEXT_MISMATCH"

    .line 22
    const-string v7, "DCERPC_FAULT_OP_RNG_ERROR"

    .line 24
    const-string v8, "DCERPC_FAULT_UNK_IF"

    .line 26
    const-string v9, "DCERPC_FAULT_PROTO_ERROR"

    .line 28
    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    .line 31
    move-result-object v0

    .line 32
    sput-object v0, Ljcifs/dcerpc/DcerpcError;->DCERPC_FAULT_MESSAGES:[Ljava/lang/String;

    .line 34
    return-void

    .line 35
    :array_22
    .array-data 4
        0x1
        0x5
        0x6d8
        0x6f7
        0x1c000006
        0x1c00001a
        0x1c010002
        0x1c010003
        0x1c01000b
    .end array-data
.end method
