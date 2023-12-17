.class public Ljcifs/smb/ACE;
.super Ljava/lang/Object;
.source "ACE.java"


# static fields
.field public static final DELETE:I = 0x10000

.field public static final FILE_APPEND_DATA:I = 0x4

.field public static final FILE_DELETE:I = 0x40

.field public static final FILE_EXECUTE:I = 0x20

.field public static final FILE_READ_ATTRIBUTES:I = 0x80

.field public static final FILE_READ_DATA:I = 0x1

.field public static final FILE_READ_EA:I = 0x8

.field public static final FILE_WRITE_ATTRIBUTES:I = 0x100

.field public static final FILE_WRITE_DATA:I = 0x2

.field public static final FILE_WRITE_EA:I = 0x10

.field public static final FLAGS_CONTAINER_INHERIT:I = 0x2

.field public static final FLAGS_INHERITED:I = 0x10

.field public static final FLAGS_INHERIT_ONLY:I = 0x8

.field public static final FLAGS_NO_PROPAGATE:I = 0x4

.field public static final FLAGS_OBJECT_INHERIT:I = 0x1

.field public static final GENERIC_ALL:I = 0x10000000

.field public static final GENERIC_EXECUTE:I = 0x20000000

.field public static final GENERIC_READ:I = -0x80000000

.field public static final GENERIC_WRITE:I = 0x40000000

.field public static final READ_CONTROL:I = 0x20000

.field public static final SYNCHRONIZE:I = 0x100000

.field public static final WRITE_DAC:I = 0x40000

.field public static final WRITE_OWNER:I = 0x80000


# instance fields
.field public access:I

.field public allow:Z

.field public flags:I

.field public sid:Ljcifs/smb/SID;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public appendCol(Ljava/lang/StringBuffer;Ljava/lang/String;I)V
    .registers 5

    .line 1
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 7
    move-result p2

    .line 8
    sub-int/2addr p3, p2

    .line 9
    const/4 p2, 0x0

    .line 10
    :goto_9
    if-lt p2, p3, :cond_c

    .line 12
    return-void

    .line 13
    :cond_c
    const/16 v0, 0x20

    .line 15
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 18
    add-int/lit8 p2, p2, 0x1

    .line 20
    goto :goto_9
.end method

.method public decode([BI)I
    .registers 5

    .line 1
    add-int/lit8 v0, p2, 0x1

    .line 3
    aget-byte p2, p1, p2

    .line 5
    if-nez p2, :cond_8

    .line 7
    const/4 p2, 0x1

    .line 8
    goto :goto_9

    .line 9
    :cond_8
    const/4 p2, 0x0

    .line 10
    :goto_9
    iput-boolean p2, p0, Ljcifs/smb/ACE;->allow:Z

    .line 12
    add-int/lit8 p2, v0, 0x1

    .line 14
    aget-byte v0, p1, v0

    .line 16
    and-int/lit16 v0, v0, 0xff

    .line 18
    iput v0, p0, Ljcifs/smb/ACE;->flags:I

    .line 20
    invoke-static {p1, p2}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    .line 23
    move-result v0

    .line 24
    add-int/lit8 p2, p2, 0x2

    .line 26
    invoke-static {p1, p2}, Ljcifs/smb/ServerMessageBlock;->readInt4([BI)I

    .line 29
    move-result v1

    .line 30
    iput v1, p0, Ljcifs/smb/ACE;->access:I

    .line 32
    add-int/lit8 p2, p2, 0x4

    .line 34
    new-instance v1, Ljcifs/smb/SID;

    .line 36
    invoke-direct {v1, p1, p2}, Ljcifs/smb/SID;-><init>([BI)V

    .line 39
    iput-object v1, p0, Ljcifs/smb/ACE;->sid:Ljcifs/smb/SID;

    .line 41
    return v0
.end method

.method public getAccessMask()I
    .registers 2

    .line 1
    iget v0, p0, Ljcifs/smb/ACE;->access:I

    .line 3
    return v0
.end method

.method public getApplyToText()Ljava/lang/String;
    .registers 3

    .line 1
    iget v0, p0, Ljcifs/smb/ACE;->flags:I

    .line 3
    and-int/lit8 v0, v0, 0xb

    .line 5
    if-eqz v0, :cond_27

    .line 7
    const/4 v1, 0x1

    .line 8
    if-eq v0, v1, :cond_24

    .line 10
    const/4 v1, 0x2

    .line 11
    if-eq v0, v1, :cond_21

    .line 13
    const/4 v1, 0x3

    .line 14
    if-eq v0, v1, :cond_1e

    .line 16
    packed-switch v0, :pswitch_data_2a

    .line 19
    const-string v0, "Invalid"

    .line 21
    return-object v0

    .line 22
    :pswitch_15  #0xb
    const-string v0, "Subfolders and files only"

    .line 24
    return-object v0

    .line 25
    :pswitch_18  #0xa
    const-string v0, "Subfolders only"

    .line 27
    return-object v0

    .line 28
    :pswitch_1b  #0x9
    const-string v0, "Files only"

    .line 30
    return-object v0

    .line 31
    :cond_1e
    const-string v0, "This folder, subfolders and files"

    .line 33
    return-object v0

    .line 34
    :cond_21
    const-string v0, "This folder and subfolders"

    .line 36
    return-object v0

    .line 37
    :cond_24
    const-string v0, "This folder and files"

    .line 39
    return-object v0

    .line 40
    :cond_27
    const-string v0, "This folder only"

    .line 42
    return-object v0

    .line 43
    :pswitch_data_2a
    .packed-switch 0x9
        :pswitch_1b  #00000009
        :pswitch_18  #0000000a
        :pswitch_15  #0000000b
    .end packed-switch
.end method

.method public getFlags()I
    .registers 2

    .line 1
    iget v0, p0, Ljcifs/smb/ACE;->flags:I

    .line 3
    return v0
.end method

.method public getSID()Ljcifs/smb/SID;
    .registers 2

    .line 1
    iget-object v0, p0, Ljcifs/smb/ACE;->sid:Ljcifs/smb/SID;

    .line 3
    return-object v0
.end method

.method public isAllow()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Ljcifs/smb/ACE;->allow:Z

    .line 3
    return v0
.end method

.method public isInherited()Z
    .registers 2

    .line 1
    iget v0, p0, Ljcifs/smb/ACE;->flags:I

    .line 3
    and-int/lit8 v0, v0, 0x10

    .line 5
    if-eqz v0, :cond_8

    .line 7
    const/4 v0, 0x1

    .line 8
    return v0

    .line 9
    :cond_8
    const/4 v0, 0x0

    .line 10
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 6
    invoke-virtual {p0}, Ljcifs/smb/ACE;->isAllow()Z

    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_e

    .line 12
    const-string v1, "Allow "

    .line 14
    goto :goto_10

    .line 15
    :cond_e
    const-string v1, "Deny  "

    .line 17
    :goto_10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 20
    iget-object v1, p0, Ljcifs/smb/ACE;->sid:Ljcifs/smb/SID;

    .line 22
    invoke-virtual {v1}, Ljcifs/smb/SID;->toDisplayString()Ljava/lang/String;

    .line 25
    move-result-object v1

    .line 26
    const/16 v2, 0x19

    .line 28
    invoke-virtual {p0, v0, v1, v2}, Ljcifs/smb/ACE;->appendCol(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 31
    const-string v1, " 0x"

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 36
    iget v1, p0, Ljcifs/smb/ACE;->access:I

    .line 38
    const/16 v2, 0x8

    .line 40
    invoke-static {v1, v2}, Ljcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 47
    const/16 v1, 0x20

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 52
    invoke-virtual {p0}, Ljcifs/smb/ACE;->isInherited()Z

    .line 55
    move-result v1

    .line 56
    if-eqz v1, :cond_3c

    .line 58
    const-string v1, "Inherited "

    .line 60
    goto :goto_3e

    .line 61
    :cond_3c
    const-string v1, "Direct    "

    .line 63
    :goto_3e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 66
    invoke-virtual {p0}, Ljcifs/smb/ACE;->getApplyToText()Ljava/lang/String;

    .line 69
    move-result-object v1

    .line 70
    const/16 v2, 0x22

    .line 72
    invoke-virtual {p0, v0, v1, v2}, Ljcifs/smb/ACE;->appendCol(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 75
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 78
    move-result-object v0

    .line 79
    return-object v0
.end method
