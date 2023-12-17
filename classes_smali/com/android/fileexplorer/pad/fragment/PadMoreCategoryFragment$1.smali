.class Lcom/android/fileexplorer/pad/fragment/PadMoreCategoryFragment$1;
.super Ljava/lang/Object;
.source "PadMoreCategoryFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/pad/fragment/PadMoreCategoryFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/pad/fragment/PadMoreCategoryFragment;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/pad/fragment/PadMoreCategoryFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/pad/fragment/PadMoreCategoryFragment$1;->this$0:Lcom/android/fileexplorer/pad/fragment/PadMoreCategoryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 12

    const v0, 0x7f0a00c7

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/android/fileexplorer/model/category/FileCategoryEntity;

    if-nez v1, :cond_13

    const-string p1, "PadMoreCategoryFragment"

    const-string v0, "tag error!"

    invoke-static {p1, v0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_13
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/model/category/FileCategoryEntity;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->getCategoryTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0}, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->getIndex()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->getIndex()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_15a

    goto/16 :goto_b8

    :sswitch_37
    const-string v5, "transfer"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_41

    goto/16 :goto_b8

    :cond_41
    const/16 v4, 0xa

    goto/16 :goto_b8

    :sswitch_45
    const-string v5, "favorite"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4f

    goto/16 :goto_b8

    :cond_4f
    const/16 v4, 0x9

    goto/16 :goto_b8

    :sswitch_53
    const-string v5, "video"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5d

    goto/16 :goto_b8

    :cond_5d
    const/16 v4, 0x8

    goto/16 :goto_b8

    :sswitch_61
    const-string v5, "music"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6a

    goto :goto_b8

    :cond_6a
    const/4 v4, 0x7

    goto :goto_b8

    :sswitch_6c
    const-string v5, "more"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_75

    goto :goto_b8

    :cond_75
    const/4 v4, 0x6

    goto :goto_b8

    :sswitch_77
    const-string v5, "zip"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_80

    goto :goto_b8

    :cond_80
    const/4 v4, 0x5

    goto :goto_b8

    :sswitch_82
    const-string v5, "doc"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8b

    goto :goto_b8

    :cond_8b
    const/4 v4, 0x4

    goto :goto_b8

    :sswitch_8d
    const-string v5, "apk"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_96

    goto :goto_b8

    :cond_96
    const/4 v4, 0x3

    goto :goto_b8

    :sswitch_98
    const-string v5, "picture"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a1

    goto :goto_b8

    :cond_a1
    const/4 v4, 0x2

    goto :goto_b8

    :sswitch_a3
    const-string v5, "xspace"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_ac

    goto :goto_b8

    :cond_ac
    const/4 v4, 0x1

    goto :goto_b8

    :sswitch_ae
    const-string v5, "recorder"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b7

    goto :goto_b8

    :cond_b7
    const/4 v4, 0x0

    :goto_b8
    const-string v3, ""

    packed-switch v4, :pswitch_data_188

    invoke-virtual {v0}, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->getAppTag()Lcom/android/fileexplorer/dao/file/AppTag;

    move-result-object v0

    if-nez v0, :cond_c4

    return-void

    :cond_c4
    invoke-virtual {v0}, Lcom/android/fileexplorer/dao/file/AppTag;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-class v1, Lcom/android/fileexplorer/pad/fragment/PadAppCategoryFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v4, "app_tag"

    invoke-virtual {v1, v4, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_121

    invoke-virtual {v0}, Lcom/android/fileexplorer/dao/file/AppTag;->getAppName()Ljava/lang/String;

    move-result-object p1

    goto :goto_121

    :pswitch_e3  #0xa
    const-class v0, Lcom/android/fileexplorer/pad/fragment/PadTransferCategoryFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    goto :goto_121

    :pswitch_ea  #0x9
    const-class v0, Lcom/android/fileexplorer/pad/fragment/PadFavoriteCategoryFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    goto :goto_121

    :pswitch_f1  #0x8
    const-class v0, Lcom/android/fileexplorer/pad/fragment/PadVideoCategoryFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    goto :goto_121

    :pswitch_f8  #0x7
    const-class v0, Lcom/android/fileexplorer/pad/fragment/PadMusicCategoryFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    goto :goto_121

    :pswitch_ff  #0x6
    const-class v0, Lcom/android/fileexplorer/pad/fragment/PadMoreCategoryFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    goto :goto_121

    :pswitch_106  #0x5
    const-class v0, Lcom/android/fileexplorer/pad/fragment/PadZipCategoryFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    goto :goto_121

    :pswitch_10d  #0x4
    const-class v0, Lcom/android/fileexplorer/pad/fragment/PadDocCategoryFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    goto :goto_121

    :pswitch_114  #0x3
    const-class v0, Lcom/android/fileexplorer/pad/fragment/PadApkCategoryFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    goto :goto_121

    :pswitch_11b  #0x2
    const-class v0, Lcom/android/fileexplorer/pad/fragment/PadPictureCategoryFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    :cond_121
    :goto_121
    move-object v6, p1

    move-object v9, v2

    move-object v5, v3

    goto :goto_141

    :pswitch_125  #0x1
    invoke-static {}, Lcom/android/fileexplorer/model/StorageUtil;->getXSpaceStorageInfo()Lcom/android/fileexplorer/model/StorageInfo;

    move-result-object v0

    if-eqz v0, :cond_121

    invoke-static {}, Lcom/android/fileexplorer/model/StorageUtil;->getXSpaceStorageInfo()Lcom/android/fileexplorer/model/StorageInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/fileexplorer/model/StorageInfo;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/android/fileexplorer/pad/PadFragmentUtil;->jumpToDetailFragment(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_121

    :pswitch_137  #0x0
    iget-object v0, p0, Lcom/android/fileexplorer/pad/fragment/PadMoreCategoryFragment$1;->this$0:Lcom/android/fileexplorer/pad/fragment/PadMoreCategoryFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/fileexplorer/util/PageRouter;->routeToRecorder(Landroid/content/Context;)V

    goto :goto_121

    :goto_141
    if-nez v1, :cond_14a

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    move-object v8, p1

    goto :goto_14b

    :cond_14a
    move-object v8, v1

    :goto_14b
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/android/fileexplorer/event/PadContentChangeEvent;

    const/4 v7, 0x1

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lcom/android/fileexplorer/event/PadContentChangeEvent;-><init>(Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Bundle;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    :sswitch_data_15a
    .sparse-switch
        -0x2fa35742 -> :sswitch_ae
        -0x2cb18472 -> :sswitch_a3
        -0x226fa302 -> :sswitch_98
        0x17a1c -> :sswitch_8d
        0x18538 -> :sswitch_82
        0x1d721 -> :sswitch_77
        0x333b55 -> :sswitch_6c
        0x636ee25 -> :sswitch_61
        0x6b0147b -> :sswitch_53
        0x3ea1c99c -> :sswitch_45
        0x4c58b7eb -> :sswitch_37
    .end sparse-switch

    :pswitch_data_188
    .packed-switch 0x0
        :pswitch_137  #00000000
        :pswitch_125  #00000001
        :pswitch_11b  #00000002
        :pswitch_114  #00000003
        :pswitch_10d  #00000004
        :pswitch_106  #00000005
        :pswitch_ff  #00000006
        :pswitch_f8  #00000007
        :pswitch_f1  #00000008
        :pswitch_ea  #00000009
        :pswitch_e3  #0000000a
    .end packed-switch
.end method
