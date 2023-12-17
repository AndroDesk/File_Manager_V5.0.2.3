.class public Lcom/android/fileexplorer/controller/FileCategoryFactory;
.super Ljava/lang/Object;
.source "FileCategoryFactory.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static createFileCategory(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)Lcom/android/fileexplorer/controller/IFileCategoryQuery;
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_4

    .line 4
    return-object v0

    .line 5
    :cond_4
    sget-object v1, Lcom/android/fileexplorer/controller/FileCategoryFactory$1;->$SwitchMap$com$android$fileexplorer$controller$FileCategoryHelper$FileCategory:[I

    .line 7
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 10
    move-result p0

    .line 11
    aget p0, v1, p0

    .line 13
    packed-switch p0, :pswitch_data_34

    .line 16
    goto :goto_33

    .line 17
    :pswitch_10  #0x12
    new-instance v0, Lcom/android/fileexplorer/controller/FileTransportedQuery;

    .line 19
    invoke-direct {v0}, Lcom/android/fileexplorer/controller/FileTransportedQuery;-><init>()V

    .line 22
    goto :goto_33

    .line 23
    :pswitch_16  #0x5, 0x6, 0x7, 0x8, 0x9, 0xa, 0xb, 0xc, 0xd, 0xe, 0xf, 0x10, 0x11
    new-instance v0, Lcom/android/fileexplorer/controller/BaseFileCategoryQuery;

    .line 25
    invoke-direct {v0}, Lcom/android/fileexplorer/controller/BaseFileCategoryQuery;-><init>()V

    .line 28
    goto :goto_33

    .line 29
    :pswitch_1c  #0x4
    new-instance v0, Lcom/android/fileexplorer/controller/InstalledAppCategoryQuery;

    .line 31
    invoke-direct {v0}, Lcom/android/fileexplorer/controller/InstalledAppCategoryQuery;-><init>()V

    .line 34
    goto :goto_33

    .line 35
    :pswitch_22  #0x3
    new-instance v0, Lcom/android/fileexplorer/controller/FileDownloadQuery;

    .line 37
    invoke-direct {v0}, Lcom/android/fileexplorer/controller/FileDownloadQuery;-><init>()V

    .line 40
    goto :goto_33

    .line 41
    :pswitch_28  #0x2
    new-instance v0, Lcom/android/fileexplorer/controller/FavoriteFileCategoryQuery;

    .line 43
    invoke-direct {v0}, Lcom/android/fileexplorer/controller/FavoriteFileCategoryQuery;-><init>()V

    .line 46
    goto :goto_33

    .line 47
    :pswitch_2e  #0x1
    new-instance v0, Lcom/android/fileexplorer/controller/FileBluetoothQuery;

    .line 49
    invoke-direct {v0}, Lcom/android/fileexplorer/controller/FileBluetoothQuery;-><init>()V

    .line 52
    :goto_33
    return-object v0

    .line 53
    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_2e  #00000001
        :pswitch_28  #00000002
        :pswitch_22  #00000003
        :pswitch_1c  #00000004
        :pswitch_16  #00000005
        :pswitch_16  #00000006
        :pswitch_16  #00000007
        :pswitch_16  #00000008
        :pswitch_16  #00000009
        :pswitch_16  #0000000a
        :pswitch_16  #0000000b
        :pswitch_16  #0000000c
        :pswitch_16  #0000000d
        :pswitch_16  #0000000e
        :pswitch_16  #0000000f
        :pswitch_16  #00000010
        :pswitch_16  #00000011
        :pswitch_10  #00000012
    .end packed-switch
.end method
