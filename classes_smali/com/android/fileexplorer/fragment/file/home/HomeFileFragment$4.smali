.class Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$4;
.super Ljava/lang/Object;
.source "HomeFileFragment.java"

# interfaces
.implements Lcom/android/fileexplorer/model/category/CategoryEntryClickListener$CategoryEntryInnerClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->initCategoryEntryView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$4;->this$0:Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickEntry(Lcom/android/fileexplorer/model/category/FileCategoryEntity;)V
    .registers 7

    :try_start_0
    invoke-virtual {p1}, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->getIndex()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/CategoryUtil;->getFragmentNameByTag(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "bundle_key_istobackstack"

    invoke-virtual {v2, v3, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-class v3, Lcom/android/fileexplorer/pad/fragment/PadAppCategoryFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_c0

    const-string v4, "app"

    if-eqz v3, :cond_47

    :try_start_21
    invoke-virtual {p1}, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->getAppTag()Lcom/android/fileexplorer/dao/file/AppTag;

    move-result-object v1

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v3, "app_tag"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$4;->this$0:Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;

    invoke-static {v1}, Lmiuix/navigator/Navigator;->get(Landroidx/fragment/app/Fragment;)Lmiuix/navigator/Navigator;

    move-result-object v1

    new-instance v3, Lcom/android/fileexplorer/fragment/NavInfo/FragmentMethodAddNavInfo;

    invoke-virtual {p1}, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->getNavId()I

    move-result p1

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-direct {v3, p1, v0, v2}, Lcom/android/fileexplorer/fragment/NavInfo/FragmentMethodAddNavInfo;-><init>(ILjava/lang/Class;Landroid/os/Bundle;)V

    invoke-virtual {v1, v3}, Lmiuix/navigator/Navigator;->navigate(Lmiuix/navigator/navigatorinfo/NavigatorInfo;)V

    goto/16 :goto_d9

    :cond_47
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a9

    invoke-virtual {p1}, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->getIndex()Ljava/lang/String;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x2fa35742

    if-eq v3, v4, :cond_6b

    const v4, -0x2cb18472

    if-eq v3, v4, :cond_61

    goto :goto_74

    :cond_61
    const-string v3, "xspace"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_74

    move v0, v1

    goto :goto_74

    :cond_6b
    const-string v3, "recorder"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_74

    const/4 v0, 0x0

    :cond_74
    :goto_74
    if-eqz v0, :cond_9f

    if-eq v0, v1, :cond_79

    goto :goto_d9

    :cond_79
    invoke-static {}, Lcom/android/fileexplorer/model/StorageUtil;->getXSpaceStorageInfo()Lcom/android/fileexplorer/model/StorageInfo;

    move-result-object p1

    if-eqz p1, :cond_d9

    const-string p1, "current_directory"

    invoke-static {}, Lcom/android/fileexplorer/model/StorageUtil;->getXSpaceStorageInfo()Lcom/android/fileexplorer/model/StorageInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/fileexplorer/model/StorageInfo;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, p1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$4;->this$0:Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;

    invoke-static {p1}, Lmiuix/navigator/Navigator;->get(Landroidx/fragment/app/Fragment;)Lmiuix/navigator/Navigator;

    move-result-object p1

    new-instance v0, Lcom/android/fileexplorer/fragment/NavInfo/FragmentMethodAddNavInfo;

    const/16 v1, 0x5200

    const-class v3, Lcom/android/fileexplorer/pad/fragment/PadFileDetailFragment;

    invoke-direct {v0, v1, v3, v2}, Lcom/android/fileexplorer/fragment/NavInfo/FragmentMethodAddNavInfo;-><init>(ILjava/lang/Class;Landroid/os/Bundle;)V

    invoke-virtual {p1, v0}, Lmiuix/navigator/Navigator;->navigate(Lmiuix/navigator/navigatorinfo/NavigatorInfo;)V

    goto :goto_d9

    :cond_9f
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$4;->this$0:Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/fileexplorer/util/PageRouter;->routeToRecorder(Landroid/content/Context;)V

    goto :goto_d9

    :cond_a9
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$4;->this$0:Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;

    invoke-static {v1}, Lmiuix/navigator/Navigator;->get(Landroidx/fragment/app/Fragment;)Lmiuix/navigator/Navigator;

    move-result-object v1

    new-instance v3, Lcom/android/fileexplorer/fragment/NavInfo/FragmentMethodAddNavInfo;

    invoke-virtual {p1}, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->getNavId()I

    move-result p1

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-direct {v3, p1, v0, v2}, Lcom/android/fileexplorer/fragment/NavInfo/FragmentMethodAddNavInfo;-><init>(ILjava/lang/Class;Landroid/os/Bundle;)V

    invoke-virtual {v1, v3}, Lmiuix/navigator/Navigator;->navigate(Lmiuix/navigator/navigatorinfo/NavigatorInfo;)V
    :try_end_bf
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_bf} :catch_c0

    goto :goto_d9

    :catch_c0
    move-exception p1

    invoke-static {}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onClickEntryError: "

    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d9
    :goto_d9
    return-void
.end method
