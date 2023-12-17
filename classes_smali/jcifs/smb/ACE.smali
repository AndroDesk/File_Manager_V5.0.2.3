.class public Ljcifs/smb/ACE;
.super Ljava/lang/Object;
.source "ACE.java"


# static fields
.field public static final DELETE:I

.field public static final FILE_APPEND_DATA:I

.field public static final FILE_DELETE:I

.field public static final FILE_EXECUTE:I

.field public static final FILE_READ_ATTRIBUTES:I

.field public static final FILE_READ_DATA:I

.field public static final FILE_READ_EA:I

.field public static final FILE_WRITE_ATTRIBUTES:I

.field public static final FILE_WRITE_DATA:I

.field public static final FILE_WRITE_EA:I

.field public static final FLAGS_CONTAINER_INHERIT:I

.field public static final FLAGS_INHERITED:I

.field public static final FLAGS_INHERIT_ONLY:I

.field public static final FLAGS_NO_PROPAGATE:I

.field public static final FLAGS_OBJECT_INHERIT:I

.field public static final GENERIC_ALL:I

.field public static final GENERIC_EXECUTE:I

.field public static final GENERIC_READ:I

.field public static final GENERIC_WRITE:I

.field public static final READ_CONTROL:I

.field public static final SYNCHRONIZE:I

.field public static final WRITE_DAC:I

.field public static final WRITE_OWNER:I


# instance fields
.field public access:I

.field public allow:Z

.field public flags:I

.field public sid:Ljcifs/smb/SID;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x82d96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Ljcifs/smb/ACE;->DELETE:I

    const v0, 0x92d92

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Ljcifs/smb/ACE;->FILE_APPEND_DATA:I

    const v0, 0x92dd6

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Ljcifs/smb/ACE;->FILE_DELETE:I

    const v0, 0x92db6

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Ljcifs/smb/ACE;->FILE_EXECUTE:I

    const v0, 0x92d16

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Ljcifs/smb/ACE;->FILE_READ_ATTRIBUTES:I

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Ljcifs/smb/ACE;->FILE_READ_DATA:I

    const v0, 0x92d9e

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Ljcifs/smb/ACE;->FILE_READ_EA:I

    const v0, 0x92c96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Ljcifs/smb/ACE;->FILE_WRITE_ATTRIBUTES:I

    const v0, 0x92d94

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Ljcifs/smb/ACE;->FILE_WRITE_DATA:I

    const v0, 0x92d86

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Ljcifs/smb/ACE;->FILE_WRITE_EA:I

    const v0, 0x92d94

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Ljcifs/smb/ACE;->FLAGS_CONTAINER_INHERIT:I

    const v0, 0x92d86

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Ljcifs/smb/ACE;->FLAGS_INHERITED:I

    const v0, 0x92d9e

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Ljcifs/smb/ACE;->FLAGS_INHERIT_ONLY:I

    const v0, 0x92d92

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Ljcifs/smb/ACE;->FLAGS_NO_PROPAGATE:I

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Ljcifs/smb/ACE;->FLAGS_OBJECT_INHERIT:I

    const v0, 0x10092d96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Ljcifs/smb/ACE;->GENERIC_ALL:I

    const v0, 0x20092d96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Ljcifs/smb/ACE;->GENERIC_EXECUTE:I

    const v0, -0x7ff6d26a

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Ljcifs/smb/ACE;->GENERIC_READ:I

    const v0, 0x40092d96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Ljcifs/smb/ACE;->GENERIC_WRITE:I

    const v0, 0xb2d96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Ljcifs/smb/ACE;->READ_CONTROL:I

    const v0, 0x192d96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Ljcifs/smb/ACE;->SYNCHRONIZE:I

    const v0, 0xd2d96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Ljcifs/smb/ACE;->WRITE_DAC:I

    const v0, 0x12d96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Ljcifs/smb/ACE;->WRITE_OWNER:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public appendCol(Ljava/lang/StringBuffer;Ljava/lang/String;I)V
    .registers 5

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    sub-int/2addr p3, p2

    const/4 p2, 0x0

    :goto_9
    if-lt p2, p3, :cond_c

    return-void

    :cond_c
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 p2, p2, 0x1

    goto :goto_9
.end method

.method public decode([BI)I
    .registers 5

    add-int/lit8 v0, p2, 0x1

    aget-byte p2, p1, p2

    if-nez p2, :cond_8

    const/4 p2, 0x1

    goto :goto_9

    :cond_8
    const/4 p2, 0x0

    :goto_9
    iput-boolean p2, p0, Ljcifs/smb/ACE;->allow:Z

    add-int/lit8 p2, v0, 0x1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Ljcifs/smb/ACE;->flags:I

    invoke-static {p1, p2}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    move-result v0

    add-int/lit8 p2, p2, 0x2

    invoke-static {p1, p2}, Ljcifs/smb/ServerMessageBlock;->readInt4([BI)I

    move-result v1

    iput v1, p0, Ljcifs/smb/ACE;->access:I

    add-int/lit8 p2, p2, 0x4

    new-instance v1, Ljcifs/smb/SID;

    invoke-direct {v1, p1, p2}, Ljcifs/smb/SID;-><init>([BI)V

    iput-object v1, p0, Ljcifs/smb/ACE;->sid:Ljcifs/smb/SID;

    return v0
.end method

.method public getAccessMask()I
    .registers 2

    iget v0, p0, Ljcifs/smb/ACE;->access:I

    return v0
.end method

.method public getApplyToText()Ljava/lang/String;
    .registers 3

    iget v0, p0, Ljcifs/smb/ACE;->flags:I

    and-int/lit8 v0, v0, 0xb

    if-eqz v0, :cond_27

    const/4 v1, 0x1

    if-eq v0, v1, :cond_24

    const/4 v1, 0x2

    if-eq v0, v1, :cond_21

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1e

    packed-switch v0, :pswitch_data_2a

    const-string v0, "Invalid"

    return-object v0

    :pswitch_15  #0xb
    const-string v0, "Subfolders and files only"

    return-object v0

    :pswitch_18  #0xa
    const-string v0, "Subfolders only"

    return-object v0

    :pswitch_1b  #0x9
    const-string v0, "Files only"

    return-object v0

    :cond_1e
    const-string v0, "This folder, subfolders and files"

    return-object v0

    :cond_21
    const-string v0, "This folder and subfolders"

    return-object v0

    :cond_24
    const-string v0, "This folder and files"

    return-object v0

    :cond_27
    const-string v0, "This folder only"

    return-object v0

    :pswitch_data_2a
    .packed-switch 0x9
        :pswitch_1b  #00000009
        :pswitch_18  #0000000a
        :pswitch_15  #0000000b
    .end packed-switch
.end method

.method public getFlags()I
    .registers 2

    iget v0, p0, Ljcifs/smb/ACE;->flags:I

    return v0
.end method

.method public getSID()Ljcifs/smb/SID;
    .registers 2

    iget-object v0, p0, Ljcifs/smb/ACE;->sid:Ljcifs/smb/SID;

    return-object v0
.end method

.method public isAllow()Z
    .registers 2

    iget-boolean v0, p0, Ljcifs/smb/ACE;->allow:Z

    return v0
.end method

.method public isInherited()Z
    .registers 2

    iget v0, p0, Ljcifs/smb/ACE;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ljcifs/smb/ACE;->isAllow()Z

    move-result v1

    if-eqz v1, :cond_e

    const-string v1, "Allow "

    goto :goto_10

    :cond_e
    const-string v1, "Deny  "

    :goto_10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Ljcifs/smb/ACE;->sid:Ljcifs/smb/SID;

    invoke-virtual {v1}, Ljcifs/smb/SID;->toDisplayString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x19

    invoke-virtual {p0, v0, v1, v2}, Ljcifs/smb/ACE;->appendCol(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    const-string v1, " 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Ljcifs/smb/ACE;->access:I

    const/16 v2, 0x8

    invoke-static {v1, v2}, Ljcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljcifs/smb/ACE;->isInherited()Z

    move-result v1

    if-eqz v1, :cond_3c

    const-string v1, "Inherited "

    goto :goto_3e

    :cond_3c
    const-string v1, "Direct    "

    :goto_3e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljcifs/smb/ACE;->getApplyToText()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x22

    invoke-virtual {p0, v0, v1, v2}, Ljcifs/smb/ACE;->appendCol(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
