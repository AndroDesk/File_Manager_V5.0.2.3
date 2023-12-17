.class public Lcom/android/fileexplorer/mirror/fragments/MirrorFragmentFactory;
.super Ljava/lang/Object;
.source "MirrorFragmentFactory.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "MirrorFragmentFactory"


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

.method public static newInstance(Landroidx/fragment/app/FragmentActivity;Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;",
            ">(",
            "Landroidx/fragment/app/FragmentActivity;",
            "Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;",
            ")",
            "Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;"
        }
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "file_category"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "category: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MirrorFragmentFactory"

    invoke-static {v2, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/android/fileexplorer/mirror/fragments/MirrorFragmentFactory$1;->$SwitchMap$com$android$fileexplorer$controller$FileCategoryHelper$FileCategory:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const-string v2, "_"

    packed-switch v1, :pswitch_data_21e

    const/4 p0, 0x0

    goto/16 :goto_218

    :pswitch_34  #0x10
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-class v1, Lcom/android/fileexplorer/mirror/fragments/MirrorExportFileFragment;

    const-string v1, "MirrorExportFileFragment"

    invoke-static {v1, v2}, Lf0/e;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManager;->D(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    check-cast p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;

    if-nez p0, :cond_218

    new-instance p0, Lcom/android/fileexplorer/mirror/fragments/MirrorExportFileFragment;

    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorExportFileFragment;-><init>()V

    goto/16 :goto_218

    :pswitch_5a  #0xf
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-class v1, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;

    const-string v1, "MirrorSearchDetailFragment"

    invoke-static {v1, v2}, Lf0/e;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManager;->D(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    check-cast p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;

    if-nez p0, :cond_218

    new-instance p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;

    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;-><init>()V

    goto/16 :goto_218

    :pswitch_80  #0xe
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-class v1, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;

    const-string v1, "MirrorSearchResultFragment"

    invoke-static {v1, v2}, Lf0/e;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManager;->D(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    check-cast p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;

    if-nez p0, :cond_218

    new-instance p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;

    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;-><init>()V

    goto/16 :goto_218

    :pswitch_a6  #0xd
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-class v1, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;

    const-string v1, "MirrorFileGroupFragment"

    invoke-static {v1, v2}, Lf0/e;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManager;->D(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    check-cast p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;

    if-nez p0, :cond_218

    new-instance p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;

    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;-><init>()V

    goto/16 :goto_218

    :pswitch_cc  #0xc
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-class v1, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;

    const-string v1, "MirrorMoreAppFragment"

    invoke-static {v1, v2}, Lf0/e;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManager;->D(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    check-cast p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;

    if-nez p0, :cond_218

    new-instance p0, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;

    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;-><init>()V

    goto/16 :goto_218

    :pswitch_f2  #0x8, 0x9, 0xa, 0xb
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-class v1, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;

    const-string v1, "MirrorCategoryFragmentPhone"

    invoke-static {v1, v2}, Lf0/e;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManager;->D(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    check-cast p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;

    if-nez p0, :cond_218

    invoke-static {}, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;->newInstance()Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;

    move-result-object p0

    goto/16 :goto_218

    :pswitch_117  #0x7
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-class v1, Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment;

    const-string v1, "MirrorFavoriteFragment"

    invoke-static {v1, v2}, Lf0/e;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManager;->D(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    check-cast p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;

    if-nez p0, :cond_218

    invoke-static {}, Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment;->newInstance()Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment;

    move-result-object p0

    goto/16 :goto_218

    :pswitch_13c  #0x6
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-class v1, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryMusicFragment;

    const-string v1, "MirrorCategoryMusicFragment"

    invoke-static {v1, v2}, Lf0/e;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManager;->D(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    check-cast p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;

    if-nez p0, :cond_218

    invoke-static {}, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryMusicFragment;->newInstance()Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryMusicFragment;

    move-result-object p0

    goto/16 :goto_218

    :pswitch_161  #0x5
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-class v1, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;

    const-string v1, "MirrorHomePictureFragment"

    invoke-static {v1, v2}, Lf0/e;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManager;->D(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    check-cast p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;

    if-nez p0, :cond_218

    invoke-static {}, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->newInstance()Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;

    move-result-object p0

    goto/16 :goto_218

    :pswitch_186  #0x4
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-class v1, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;

    const-string v1, "MirrorHomeVideoFragment"

    invoke-static {v1, v2}, Lf0/e;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManager;->D(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    check-cast p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;

    if-nez p0, :cond_218

    invoke-static {}, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;->newInstance()Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;

    move-result-object p0

    goto :goto_218

    :pswitch_1aa  #0x3
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-class v1, Lcom/android/fileexplorer/mirror/fragments/MirrorDocsCategoryTabFragment;

    const-string v1, "MirrorDocsCategoryTabFragment"

    invoke-static {v1, v2}, Lf0/e;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManager;->D(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    check-cast p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;

    if-nez p0, :cond_218

    new-instance p0, Lcom/android/fileexplorer/mirror/fragments/MirrorDocsCategoryTabFragment;

    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorDocsCategoryTabFragment;-><init>()V

    goto :goto_218

    :pswitch_1cf  #0x2
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-class v1, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;

    const-string v1, "MirrorRecentFragment"

    invoke-static {v1, v2}, Lf0/e;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManager;->D(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    check-cast p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;

    if-nez p0, :cond_218

    new-instance p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;

    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;-><init>()V

    goto :goto_218

    :pswitch_1f4  #0x1
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-class v1, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

    const-string v1, "MirrorFileFragment"

    invoke-static {v1, v2}, Lf0/e;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManager;->D(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    check-cast p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;

    if-nez p0, :cond_218

    new-instance p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;-><init>()V

    :cond_218
    :goto_218
    if-eqz p0, :cond_21d

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    :cond_21d
    return-object p0

    :pswitch_data_21e
    .packed-switch 0x1
        :pswitch_1f4  #00000001
        :pswitch_1cf  #00000002
        :pswitch_1aa  #00000003
        :pswitch_186  #00000004
        :pswitch_161  #00000005
        :pswitch_13c  #00000006
        :pswitch_117  #00000007
        :pswitch_f2  #00000008
        :pswitch_f2  #00000009
        :pswitch_f2  #0000000a
        :pswitch_f2  #0000000b
        :pswitch_cc  #0000000c
        :pswitch_a6  #0000000d
        :pswitch_80  #0000000e
        :pswitch_5a  #0000000f
        :pswitch_34  #00000010
    .end packed-switch
.end method
