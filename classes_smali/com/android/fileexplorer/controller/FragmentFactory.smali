.class public Lcom/android/fileexplorer/controller/FragmentFactory;
.super Ljava/lang/Object;
.source "FragmentFactory.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "FragmentFactory"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newInstance(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)Lmiuix/appcompat/app/Fragment;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lmiuix/appcompat/app/Fragment;",
            ">(",
            "Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;",
            ")",
            "Lmiuix/appcompat/app/Fragment;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 9
    move-result v1

    .line 10
    const-string v2, "file_category"

    .line 12
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 15
    sget-object v1, Lcom/android/fileexplorer/controller/FragmentFactory$1;->$SwitchMap$com$android$fileexplorer$controller$FileCategoryHelper$FileCategory:[I

    .line 17
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 20
    move-result p0

    .line 21
    aget p0, v1, p0

    .line 23
    const/4 v1, 0x0

    .line 24
    packed-switch p0, :pswitch_data_56

    .line 27
    goto :goto_50

    .line 28
    :pswitch_1b  #0x9
    new-instance v1, Lcom/android/cloud/fragment/CloudDriveFragment;

    .line 30
    invoke-direct {v1}, Lcom/android/cloud/fragment/CloudDriveFragment;-><init>()V

    .line 33
    goto :goto_50

    .line 34
    :pswitch_21  #0x8
    new-instance v1, Lcom/android/fileexplorer/fragment/MoreAppFragment;

    .line 36
    invoke-direct {v1}, Lcom/android/fileexplorer/fragment/MoreAppFragment;-><init>()V

    .line 39
    goto :goto_50

    .line 40
    :pswitch_27  #0x7
    new-instance v1, Lcom/android/fileexplorer/fragment/category/FavoriteCategoryFragment;

    .line 42
    invoke-direct {v1}, Lcom/android/fileexplorer/fragment/category/FavoriteCategoryFragment;-><init>()V

    .line 45
    goto :goto_50

    .line 46
    :pswitch_2d  #0x6
    new-instance v1, Lcom/android/fileexplorer/fragment/category/MusicCategoryFragment;

    .line 48
    invoke-direct {v1}, Lcom/android/fileexplorer/fragment/category/MusicCategoryFragment;-><init>()V

    .line 51
    goto :goto_50

    .line 52
    :pswitch_33  #0x5
    new-instance v1, Lcom/android/fileexplorer/fragment/category/PictureCategoryFragment;

    .line 54
    invoke-direct {v1}, Lcom/android/fileexplorer/fragment/category/PictureCategoryFragment;-><init>()V

    .line 57
    goto :goto_50

    .line 58
    :pswitch_39  #0x4
    new-instance v1, Lcom/android/fileexplorer/fragment/category/VideoCategoryFragment;

    .line 60
    invoke-direct {v1}, Lcom/android/fileexplorer/fragment/category/VideoCategoryFragment;-><init>()V

    .line 63
    goto :goto_50

    .line 64
    :pswitch_3f  #0x3
    new-instance v1, Lcom/android/fileexplorer/fragment/category/DocCategoryFragment;

    .line 66
    invoke-direct {v1}, Lcom/android/fileexplorer/fragment/category/DocCategoryFragment;-><init>()V

    .line 69
    goto :goto_50

    .line 70
    :pswitch_45  #0x2
    new-instance v1, Lcom/android/fileexplorer/fragment/RecentFragment;

    .line 72
    invoke-direct {v1}, Lcom/android/fileexplorer/fragment/RecentFragment;-><init>()V

    .line 75
    goto :goto_50

    .line 76
    :pswitch_4b  #0x1
    new-instance v1, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;

    .line 78
    invoke-direct {v1}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;-><init>()V

    .line 81
    :goto_50
    :pswitch_50  #0xa, 0xb
    if-eqz v1, :cond_55

    .line 83
    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 86
    :cond_55
    return-object v1

    .line 87
    :pswitch_data_56
    .packed-switch 0x1
        :pswitch_4b  #00000001
        :pswitch_45  #00000002
        :pswitch_3f  #00000003
        :pswitch_39  #00000004
        :pswitch_33  #00000005
        :pswitch_2d  #00000006
        :pswitch_27  #00000007
        :pswitch_21  #00000008
        :pswitch_1b  #00000009
        :pswitch_50  #0000000a
        :pswitch_50  #0000000b
    .end packed-switch
.end method
