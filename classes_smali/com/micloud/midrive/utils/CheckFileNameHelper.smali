.class public Lcom/micloud/midrive/utils/CheckFileNameHelper;
.super Ljava/lang/Object;
.source "CheckFileNameHelper.java"


# static fields
.field public static final MAX_FAT32_NAME_LENGTH:I = 0xa0

.field private static isFat32Char:[Z


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 1
    const/16 v0, 0x80

    .line 3
    new-array v0, v0, [Z

    .line 5
    sput-object v0, Lcom/micloud/midrive/utils/CheckFileNameHelper;->isFat32Char:[Z

    .line 7
    const/16 v0, 0x30

    .line 9
    :goto_8
    const/16 v1, 0x39

    .line 11
    const/4 v2, 0x1

    .line 12
    if-gt v0, v1, :cond_15

    .line 14
    sget-object v1, Lcom/micloud/midrive/utils/CheckFileNameHelper;->isFat32Char:[Z

    .line 16
    aput-boolean v2, v1, v0

    .line 18
    add-int/lit8 v0, v0, 0x1

    .line 20
    int-to-char v0, v0

    .line 21
    goto :goto_8

    .line 22
    :cond_15
    const/16 v0, 0x41

    .line 24
    :goto_17
    const/16 v1, 0x5a

    .line 26
    if-gt v0, v1, :cond_23

    .line 28
    sget-object v1, Lcom/micloud/midrive/utils/CheckFileNameHelper;->isFat32Char:[Z

    .line 30
    aput-boolean v2, v1, v0

    .line 32
    add-int/lit8 v0, v0, 0x1

    .line 34
    int-to-char v0, v0

    .line 35
    goto :goto_17

    .line 36
    :cond_23
    const/16 v0, 0x61

    .line 38
    :goto_25
    const/16 v1, 0x7a

    .line 40
    if-gt v0, v1, :cond_31

    .line 42
    sget-object v1, Lcom/micloud/midrive/utils/CheckFileNameHelper;->isFat32Char:[Z

    .line 44
    aput-boolean v2, v1, v0

    .line 46
    add-int/lit8 v0, v0, 0x1

    .line 48
    int-to-char v0, v0

    .line 49
    goto :goto_25

    .line 50
    :cond_31
    sget-object v0, Lcom/micloud/midrive/utils/CheckFileNameHelper;->isFat32Char:[Z

    .line 52
    const/16 v1, 0x24

    .line 54
    aput-boolean v2, v0, v1

    .line 56
    const/16 v1, 0x25

    .line 58
    aput-boolean v2, v0, v1

    .line 60
    const/16 v1, 0x27

    .line 62
    aput-boolean v2, v0, v1

    .line 64
    const/16 v1, 0x2d

    .line 66
    aput-boolean v2, v0, v1

    .line 68
    const/16 v1, 0x5f

    .line 70
    aput-boolean v2, v0, v1

    .line 72
    const/16 v1, 0x40

    .line 74
    aput-boolean v2, v0, v1

    .line 76
    const/16 v1, 0x7e

    .line 78
    aput-boolean v2, v0, v1

    .line 80
    const/16 v1, 0x60

    .line 82
    aput-boolean v2, v0, v1

    .line 84
    const/16 v1, 0x21

    .line 86
    aput-boolean v2, v0, v1

    .line 88
    const/16 v1, 0x28

    .line 90
    aput-boolean v2, v0, v1

    .line 92
    const/16 v1, 0x29

    .line 94
    aput-boolean v2, v0, v1

    .line 96
    const/16 v1, 0x7b

    .line 98
    aput-boolean v2, v0, v1

    .line 100
    const/16 v1, 0x7d

    .line 102
    aput-boolean v2, v0, v1

    .line 104
    const/16 v1, 0x5e

    .line 106
    aput-boolean v2, v0, v1

    .line 108
    const/16 v1, 0x23

    .line 110
    aput-boolean v2, v0, v1

    .line 112
    const/16 v1, 0x26

    .line 114
    aput-boolean v2, v0, v1

    .line 116
    const/16 v1, 0x2e

    .line 118
    aput-boolean v2, v0, v1

    .line 120
    const/16 v1, 0x2b

    .line 122
    aput-boolean v2, v0, v1

    .line 124
    const/16 v1, 0x2c

    .line 126
    aput-boolean v2, v0, v1

    .line 128
    const/16 v1, 0x3b

    .line 130
    aput-boolean v2, v0, v1

    .line 132
    const/16 v1, 0x3d

    .line 134
    aput-boolean v2, v0, v1

    .line 136
    const/16 v1, 0x5b

    .line 138
    aput-boolean v2, v0, v1

    .line 140
    const/16 v1, 0x5d

    .line 142
    aput-boolean v2, v0, v1

    .line 144
    const/16 v1, 0x20

    .line 146
    aput-boolean v2, v0, v1

    .line 148
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isStringAllFat32Chars(Ljava/lang/String;)Z
    .registers 7

    .line 1
    invoke-static {p0}, Lcom/micloud/midrive/utils/ArgumentCheckUtils;->checkNotEmpty(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    .line 7
    move-result-object p0

    .line 8
    array-length v0, p0

    .line 9
    const/4 v1, 0x0

    .line 10
    move v2, v1

    .line 11
    :goto_a
    if-ge v2, v0, :cond_1b

    .line 13
    aget-char v3, p0, v2

    .line 15
    sget-object v4, Lcom/micloud/midrive/utils/CheckFileNameHelper;->isFat32Char:[Z

    .line 17
    array-length v5, v4

    .line 18
    if-ge v3, v5, :cond_18

    .line 20
    aget-boolean v3, v4, v3

    .line 22
    if-nez v3, :cond_18

    .line 24
    return v1

    .line 25
    :cond_18
    add-int/lit8 v2, v2, 0x1

    .line 27
    goto :goto_a

    .line 28
    :cond_1b
    const/4 p0, 0x1

    .line 29
    return p0
.end method

.method public static validateFilename(Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x2712

    .line 7
    if-nez v0, :cond_59

    .line 9
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_4b

    .line 19
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 22
    move-result v0

    .line 23
    const/16 v2, 0xa0

    .line 25
    if-gt v0, v2, :cond_3f

    .line 27
    const-string v0, "^\\.*$"

    .line 29
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 32
    move-result v0

    .line 33
    const-string v2, "invalid name: "

    .line 35
    if-nez v0, :cond_35

    .line 37
    invoke-static {p0}, Lcom/micloud/midrive/utils/CheckFileNameHelper;->isStringAllFat32Chars(Ljava/lang/String;)Z

    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_2b

    .line 43
    return-void

    .line 44
    :cond_2b
    invoke-static {v2, p0}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 47
    move-result-object p0

    .line 48
    new-instance v0, Lcom/micloud/midrive/task/exception/UploadCheckParamException;

    .line 50
    invoke-direct {v0, v1, p0}, Lcom/micloud/midrive/task/exception/UploadCheckParamException;-><init>(ILjava/lang/String;)V

    .line 53
    throw v0

    .line 54
    :cond_35
    invoke-static {v2, p0}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 57
    move-result-object p0

    .line 58
    new-instance v0, Lcom/micloud/midrive/task/exception/UploadCheckParamException;

    .line 60
    invoke-direct {v0, v1, p0}, Lcom/micloud/midrive/task/exception/UploadCheckParamException;-><init>(ILjava/lang/String;)V

    .line 63
    throw v0

    .line 64
    :cond_3f
    const-string v0, "long name: "

    .line 66
    invoke-static {v0, p0}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 69
    move-result-object p0

    .line 70
    new-instance v0, Lcom/micloud/midrive/task/exception/UploadCheckParamException;

    .line 72
    invoke-direct {v0, v1, p0}, Lcom/micloud/midrive/task/exception/UploadCheckParamException;-><init>(ILjava/lang/String;)V

    .line 75
    throw v0

    .line 76
    :cond_4b
    const-string v0, "name with leading/trailing spaces: \'"

    .line 78
    const-string v2, "\'"

    .line 80
    invoke-static {v0, p0, v2}, La/a;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 83
    move-result-object p0

    .line 84
    new-instance v0, Lcom/micloud/midrive/task/exception/UploadCheckParamException;

    .line 86
    invoke-direct {v0, v1, p0}, Lcom/micloud/midrive/task/exception/UploadCheckParamException;-><init>(ILjava/lang/String;)V

    .line 89
    throw v0

    .line 90
    :cond_59
    new-instance p0, Lcom/micloud/midrive/task/exception/UploadCheckParamException;

    .line 92
    const-string v0, "empty name"

    .line 94
    invoke-direct {p0, v1, v0}, Lcom/micloud/midrive/task/exception/UploadCheckParamException;-><init>(ILjava/lang/String;)V

    .line 97
    throw p0
.end method
