.class public Lcom/android/fileexplorer/controller/FragmentFactory;
.super Ljava/lang/Object;
.source "FragmentFactory.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "FragmentFactory"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

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

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "file_category"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    sget-object v1, Lcom/android/fileexplorer/controller/FragmentFactory$1;->$SwitchMap$com$android$fileexplorer$controller$FileCategoryHelper$FileCategory:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v1, p0

    const/4 v1, 0x0

    packed-switch p0, :pswitch_data_56

    goto :goto_50

    :pswitch_1b  #0x9
    new-instance v1, Lcom/android/cloud/fragment/CloudDriveFragment;

    invoke-direct {v1}, Lcom/android/cloud/fragment/CloudDriveFragment;-><init>()V

    goto :goto_50

    :pswitch_21  #0x8
    new-instance v1, Lcom/android/fileexplorer/fragment/MoreAppFragment;

    invoke-direct {v1}, Lcom/android/fileexplorer/fragment/MoreAppFragment;-><init>()V

    goto :goto_50

    :pswitch_27  #0x7
    new-instance v1, Lcom/android/fileexplorer/fragment/category/FavoriteCategoryFragment;

    invoke-direct {v1}, Lcom/android/fileexplorer/fragment/category/FavoriteCategoryFragment;-><init>()V

    goto :goto_50

    :pswitch_2d  #0x6
    new-instance v1, Lcom/android/fileexplorer/fragment/category/MusicCategoryFragment;

    invoke-direct {v1}, Lcom/android/fileexplorer/fragment/category/MusicCategoryFragment;-><init>()V

    goto :goto_50

    :pswitch_33  #0x5
    new-instance v1, Lcom/android/fileexplorer/fragment/category/PictureCategoryFragment;

    invoke-direct {v1}, Lcom/android/fileexplorer/fragment/category/PictureCategoryFragment;-><init>()V

    goto :goto_50

    :pswitch_39  #0x4
    new-instance v1, Lcom/android/fileexplorer/fragment/category/VideoCategoryFragment;

    invoke-direct {v1}, Lcom/android/fileexplorer/fragment/category/VideoCategoryFragment;-><init>()V

    goto :goto_50

    :pswitch_3f  #0x3
    new-instance v1, Lcom/android/fileexplorer/fragment/category/DocCategoryFragment;

    invoke-direct {v1}, Lcom/android/fileexplorer/fragment/category/DocCategoryFragment;-><init>()V

    goto :goto_50

    :pswitch_45  #0x2
    new-instance v1, Lcom/android/fileexplorer/fragment/RecentFragment;

    invoke-direct {v1}, Lcom/android/fileexplorer/fragment/RecentFragment;-><init>()V

    goto :goto_50

    :pswitch_4b  #0x1
    new-instance v1, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;

    invoke-direct {v1}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;-><init>()V

    :goto_50
    :pswitch_50  #0xa, 0xb
    if-eqz v1, :cond_55

    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    :cond_55
    return-object v1

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
