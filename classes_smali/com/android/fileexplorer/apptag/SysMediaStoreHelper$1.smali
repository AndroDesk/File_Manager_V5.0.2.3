.class synthetic Lcom/android/fileexplorer/apptag/SysMediaStoreHelper$1;
.super Ljava/lang/Object;
.source "SysMediaStoreHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/apptag/SysMediaStoreHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic $SwitchMap$com$android$fileexplorer$apptag$FileConstant$SortMethod:[I

.field public static final synthetic $SwitchMap$com$android$fileexplorer$controller$FileCategoryHelper$FileCategory:[I


# direct methods
.method public static constructor <clinit>()V
    .registers 8

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/apptag/FileConstant$SortMethod;->values()[Lcom/android/fileexplorer/apptag/FileConstant$SortMethod;

    .line 4
    move-result-object v0

    .line 5
    array-length v0, v0

    .line 6
    new-array v0, v0, [I

    .line 8
    sput-object v0, Lcom/android/fileexplorer/apptag/SysMediaStoreHelper$1;->$SwitchMap$com$android$fileexplorer$apptag$FileConstant$SortMethod:[I

    .line 10
    const/4 v1, 0x1

    .line 11
    :try_start_a
    sget-object v2, Lcom/android/fileexplorer/apptag/FileConstant$SortMethod;->name:Lcom/android/fileexplorer/apptag/FileConstant$SortMethod;

    .line 13
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 16
    move-result v2

    .line 17
    aput v1, v0, v2
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_12} :catch_12

    .line 19
    :catch_12
    const/4 v0, 0x2

    .line 20
    :try_start_13
    sget-object v2, Lcom/android/fileexplorer/apptag/SysMediaStoreHelper$1;->$SwitchMap$com$android$fileexplorer$apptag$FileConstant$SortMethod:[I

    .line 22
    sget-object v3, Lcom/android/fileexplorer/apptag/FileConstant$SortMethod;->size:Lcom/android/fileexplorer/apptag/FileConstant$SortMethod;

    .line 24
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 27
    move-result v3

    .line 28
    aput v0, v2, v3
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_1d} :catch_1d

    .line 30
    :catch_1d
    const/4 v2, 0x3

    .line 31
    :try_start_1e
    sget-object v3, Lcom/android/fileexplorer/apptag/SysMediaStoreHelper$1;->$SwitchMap$com$android$fileexplorer$apptag$FileConstant$SortMethod:[I

    .line 33
    sget-object v4, Lcom/android/fileexplorer/apptag/FileConstant$SortMethod;->dateDesc:Lcom/android/fileexplorer/apptag/FileConstant$SortMethod;

    .line 35
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 38
    move-result v4

    .line 39
    aput v2, v3, v4
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_28} :catch_28

    .line 41
    :catch_28
    const/4 v3, 0x4

    .line 42
    :try_start_29
    sget-object v4, Lcom/android/fileexplorer/apptag/SysMediaStoreHelper$1;->$SwitchMap$com$android$fileexplorer$apptag$FileConstant$SortMethod:[I

    .line 44
    sget-object v5, Lcom/android/fileexplorer/apptag/FileConstant$SortMethod;->dateAsc:Lcom/android/fileexplorer/apptag/FileConstant$SortMethod;

    .line 46
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 49
    move-result v5

    .line 50
    aput v3, v4, v5
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_33} :catch_33

    .line 52
    :catch_33
    const/4 v4, 0x5

    .line 53
    :try_start_34
    sget-object v5, Lcom/android/fileexplorer/apptag/SysMediaStoreHelper$1;->$SwitchMap$com$android$fileexplorer$apptag$FileConstant$SortMethod:[I

    .line 55
    sget-object v6, Lcom/android/fileexplorer/apptag/FileConstant$SortMethod;->type:Lcom/android/fileexplorer/apptag/FileConstant$SortMethod;

    .line 57
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 60
    move-result v6

    .line 61
    aput v4, v5, v6
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_34 .. :try_end_3e} :catch_3e

    .line 63
    :catch_3e
    const/4 v5, 0x6

    .line 64
    :try_start_3f
    sget-object v6, Lcom/android/fileexplorer/apptag/SysMediaStoreHelper$1;->$SwitchMap$com$android$fileexplorer$apptag$FileConstant$SortMethod:[I

    .line 66
    sget-object v7, Lcom/android/fileexplorer/apptag/FileConstant$SortMethod;->Dir:Lcom/android/fileexplorer/apptag/FileConstant$SortMethod;

    .line 68
    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    .line 71
    move-result v7

    .line 72
    aput v5, v6, v7
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3f .. :try_end_49} :catch_49

    .line 74
    :catch_49
    invoke-static {}, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->values()[Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 77
    move-result-object v6

    .line 78
    array-length v6, v6

    .line 79
    new-array v6, v6, [I

    .line 81
    sput-object v6, Lcom/android/fileexplorer/apptag/SysMediaStoreHelper$1;->$SwitchMap$com$android$fileexplorer$controller$FileCategoryHelper$FileCategory:[I

    .line 83
    :try_start_52
    sget-object v7, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Theme:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 85
    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    .line 88
    move-result v7

    .line 89
    aput v1, v6, v7
    :try_end_5a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_52 .. :try_end_5a} :catch_5a

    .line 91
    :catch_5a
    :try_start_5a
    sget-object v1, Lcom/android/fileexplorer/apptag/SysMediaStoreHelper$1;->$SwitchMap$com$android$fileexplorer$controller$FileCategoryHelper$FileCategory:[I

    .line 93
    sget-object v6, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Doc:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 95
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 98
    move-result v6

    .line 99
    aput v0, v1, v6
    :try_end_64
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5a .. :try_end_64} :catch_64

    .line 101
    :catch_64
    :try_start_64
    sget-object v0, Lcom/android/fileexplorer/apptag/SysMediaStoreHelper$1;->$SwitchMap$com$android$fileexplorer$controller$FileCategoryHelper$FileCategory:[I

    .line 103
    sget-object v1, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Zip:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 105
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 108
    move-result v1

    .line 109
    aput v2, v0, v1
    :try_end_6e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_64 .. :try_end_6e} :catch_6e

    .line 111
    :catch_6e
    :try_start_6e
    sget-object v0, Lcom/android/fileexplorer/apptag/SysMediaStoreHelper$1;->$SwitchMap$com$android$fileexplorer$controller$FileCategoryHelper$FileCategory:[I

    .line 113
    sget-object v1, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Apk:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 115
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 118
    move-result v1

    .line 119
    aput v3, v0, v1
    :try_end_78
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6e .. :try_end_78} :catch_78

    .line 121
    :catch_78
    :try_start_78
    sget-object v0, Lcom/android/fileexplorer/apptag/SysMediaStoreHelper$1;->$SwitchMap$com$android$fileexplorer$controller$FileCategoryHelper$FileCategory:[I

    .line 123
    sget-object v1, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Video:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 125
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 128
    move-result v1

    .line 129
    aput v4, v0, v1
    :try_end_82
    .catch Ljava/lang/NoSuchFieldError; {:try_start_78 .. :try_end_82} :catch_82

    .line 131
    :catch_82
    :try_start_82
    sget-object v0, Lcom/android/fileexplorer/apptag/SysMediaStoreHelper$1;->$SwitchMap$com$android$fileexplorer$controller$FileCategoryHelper$FileCategory:[I

    .line 133
    sget-object v1, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->All:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 135
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 138
    move-result v1

    .line 139
    aput v5, v0, v1
    :try_end_8c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_82 .. :try_end_8c} :catch_8c

    .line 141
    :catch_8c
    :try_start_8c
    sget-object v0, Lcom/android/fileexplorer/apptag/SysMediaStoreHelper$1;->$SwitchMap$com$android$fileexplorer$controller$FileCategoryHelper$FileCategory:[I

    .line 143
    sget-object v1, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Music:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 145
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 148
    move-result v1

    .line 149
    const/4 v2, 0x7

    .line 150
    aput v2, v0, v1
    :try_end_97
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8c .. :try_end_97} :catch_97

    .line 152
    :catch_97
    :try_start_97
    sget-object v0, Lcom/android/fileexplorer/apptag/SysMediaStoreHelper$1;->$SwitchMap$com$android$fileexplorer$controller$FileCategoryHelper$FileCategory:[I

    .line 154
    sget-object v1, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Picture:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 156
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 159
    move-result v1

    .line 160
    const/16 v2, 0x8

    .line 162
    aput v2, v0, v1
    :try_end_a3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_97 .. :try_end_a3} :catch_a3

    .line 164
    :catch_a3
    return-void
.end method
