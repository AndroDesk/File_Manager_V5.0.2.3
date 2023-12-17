.class synthetic Lcom/android/fileexplorer/mirror/fragments/MirrorFragmentFactory$1;
.super Ljava/lang/Object;
.source "MirrorFragmentFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/mirror/fragments/MirrorFragmentFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic $SwitchMap$com$android$fileexplorer$controller$FileCategoryHelper$FileCategory:[I


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->values()[Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 4
    move-result-object v0

    .line 5
    array-length v0, v0

    .line 6
    new-array v0, v0, [I

    .line 8
    sput-object v0, Lcom/android/fileexplorer/mirror/fragments/MirrorFragmentFactory$1;->$SwitchMap$com$android$fileexplorer$controller$FileCategoryHelper$FileCategory:[I

    .line 10
    :try_start_9
    sget-object v1, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Custom:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 12
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 15
    move-result v1

    .line 16
    const/4 v2, 0x1

    .line 17
    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    .line 19
    :catch_12
    :try_start_12
    sget-object v0, Lcom/android/fileexplorer/mirror/fragments/MirrorFragmentFactory$1;->$SwitchMap$com$android$fileexplorer$controller$FileCategoryHelper$FileCategory:[I

    .line 21
    sget-object v1, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Recent:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 23
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 26
    move-result v1

    .line 27
    const/4 v2, 0x2

    .line 28
    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    .line 30
    :catch_1d
    :try_start_1d
    sget-object v0, Lcom/android/fileexplorer/mirror/fragments/MirrorFragmentFactory$1;->$SwitchMap$com$android$fileexplorer$controller$FileCategoryHelper$FileCategory:[I

    .line 32
    sget-object v1, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Doc:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 34
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 37
    move-result v1

    .line 38
    const/4 v2, 0x3

    .line 39
    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    .line 41
    :catch_28
    :try_start_28
    sget-object v0, Lcom/android/fileexplorer/mirror/fragments/MirrorFragmentFactory$1;->$SwitchMap$com$android$fileexplorer$controller$FileCategoryHelper$FileCategory:[I

    .line 43
    sget-object v1, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Video:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 45
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 48
    move-result v1

    .line 49
    const/4 v2, 0x4

    .line 50
    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    .line 52
    :catch_33
    :try_start_33
    sget-object v0, Lcom/android/fileexplorer/mirror/fragments/MirrorFragmentFactory$1;->$SwitchMap$com$android$fileexplorer$controller$FileCategoryHelper$FileCategory:[I

    .line 54
    sget-object v1, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Picture:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 56
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 59
    move-result v1

    .line 60
    const/4 v2, 0x5

    .line 61
    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_3e

    .line 63
    :catch_3e
    :try_start_3e
    sget-object v0, Lcom/android/fileexplorer/mirror/fragments/MirrorFragmentFactory$1;->$SwitchMap$com$android$fileexplorer$controller$FileCategoryHelper$FileCategory:[I

    .line 65
    sget-object v1, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Music:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 67
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 70
    move-result v1

    .line 71
    const/4 v2, 0x6

    .line 72
    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_49

    .line 74
    :catch_49
    :try_start_49
    sget-object v0, Lcom/android/fileexplorer/mirror/fragments/MirrorFragmentFactory$1;->$SwitchMap$com$android$fileexplorer$controller$FileCategoryHelper$FileCategory:[I

    .line 76
    sget-object v1, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Favorite:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 78
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 81
    move-result v1

    .line 82
    const/4 v2, 0x7

    .line 83
    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_54} :catch_54

    .line 85
    :catch_54
    :try_start_54
    sget-object v0, Lcom/android/fileexplorer/mirror/fragments/MirrorFragmentFactory$1;->$SwitchMap$com$android$fileexplorer$controller$FileCategoryHelper$FileCategory:[I

    .line 87
    sget-object v1, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Apk:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 89
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 92
    move-result v1

    .line 93
    const/16 v2, 0x8

    .line 95
    aput v2, v0, v1
    :try_end_60
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_60} :catch_60

    .line 97
    :catch_60
    :try_start_60
    sget-object v0, Lcom/android/fileexplorer/mirror/fragments/MirrorFragmentFactory$1;->$SwitchMap$com$android$fileexplorer$controller$FileCategoryHelper$FileCategory:[I

    .line 99
    sget-object v1, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Zip:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 101
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 104
    move-result v1

    .line 105
    const/16 v2, 0x9

    .line 107
    aput v2, v0, v1
    :try_end_6c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_60 .. :try_end_6c} :catch_6c

    .line 109
    :catch_6c
    :try_start_6c
    sget-object v0, Lcom/android/fileexplorer/mirror/fragments/MirrorFragmentFactory$1;->$SwitchMap$com$android$fileexplorer$controller$FileCategoryHelper$FileCategory:[I

    .line 111
    sget-object v1, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Bluetooth:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 113
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 116
    move-result v1

    .line 117
    const/16 v2, 0xa

    .line 119
    aput v2, v0, v1
    :try_end_78
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6c .. :try_end_78} :catch_78

    .line 121
    :catch_78
    :try_start_78
    sget-object v0, Lcom/android/fileexplorer/mirror/fragments/MirrorFragmentFactory$1;->$SwitchMap$com$android$fileexplorer$controller$FileCategoryHelper$FileCategory:[I

    .line 123
    sget-object v1, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->MINE:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 125
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 128
    move-result v1

    .line 129
    const/16 v2, 0xb

    .line 131
    aput v2, v0, v1
    :try_end_84
    .catch Ljava/lang/NoSuchFieldError; {:try_start_78 .. :try_end_84} :catch_84

    .line 133
    :catch_84
    :try_start_84
    sget-object v0, Lcom/android/fileexplorer/mirror/fragments/MirrorFragmentFactory$1;->$SwitchMap$com$android$fileexplorer$controller$FileCategoryHelper$FileCategory:[I

    .line 135
    sget-object v1, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->APP:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 137
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 140
    move-result v1

    .line 141
    const/16 v2, 0xc

    .line 143
    aput v2, v0, v1
    :try_end_90
    .catch Ljava/lang/NoSuchFieldError; {:try_start_84 .. :try_end_90} :catch_90

    .line 145
    :catch_90
    :try_start_90
    sget-object v0, Lcom/android/fileexplorer/mirror/fragments/MirrorFragmentFactory$1;->$SwitchMap$com$android$fileexplorer$controller$FileCategoryHelper$FileCategory:[I

    .line 147
    sget-object v1, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->TYPE:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 149
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 152
    move-result v1

    .line 153
    const/16 v2, 0xd

    .line 155
    aput v2, v0, v1
    :try_end_9c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_90 .. :try_end_9c} :catch_9c

    .line 157
    :catch_9c
    :try_start_9c
    sget-object v0, Lcom/android/fileexplorer/mirror/fragments/MirrorFragmentFactory$1;->$SwitchMap$com$android$fileexplorer$controller$FileCategoryHelper$FileCategory:[I

    .line 159
    sget-object v1, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->SearchResult:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 161
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 164
    move-result v1

    .line 165
    const/16 v2, 0xe

    .line 167
    aput v2, v0, v1
    :try_end_a8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9c .. :try_end_a8} :catch_a8

    .line 169
    :catch_a8
    :try_start_a8
    sget-object v0, Lcom/android/fileexplorer/mirror/fragments/MirrorFragmentFactory$1;->$SwitchMap$com$android$fileexplorer$controller$FileCategoryHelper$FileCategory:[I

    .line 171
    sget-object v1, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->SearchDetail:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 173
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 176
    move-result v1

    .line 177
    const/16 v2, 0xf

    .line 179
    aput v2, v0, v1
    :try_end_b4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a8 .. :try_end_b4} :catch_b4

    .line 181
    :catch_b4
    :try_start_b4
    sget-object v0, Lcom/android/fileexplorer/mirror/fragments/MirrorFragmentFactory$1;->$SwitchMap$com$android$fileexplorer$controller$FileCategoryHelper$FileCategory:[I

    .line 183
    sget-object v1, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Picker:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 185
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 188
    move-result v1

    .line 189
    const/16 v2, 0x10

    .line 191
    aput v2, v0, v1
    :try_end_c0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b4 .. :try_end_c0} :catch_c0

    .line 193
    :catch_c0
    return-void
.end method
