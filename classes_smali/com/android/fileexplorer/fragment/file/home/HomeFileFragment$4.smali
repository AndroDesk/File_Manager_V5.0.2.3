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
.method public constructor <init>(Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$4;->this$0:Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClickEntry(Lcom/android/fileexplorer/model/category/FileCategoryEntity;)V
    .registers 7

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->getIndex()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/CategoryUtil;->getFragmentNameByTag(Ljava/lang/String;Z)Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 10
    new-instance v2, Landroid/os/Bundle;

    .line 12
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 15
    const-string v3, "bundle_key_istobackstack"

    .line 17
    invoke-virtual {v2, v3, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 20
    const-class v3, Lcom/android/fileexplorer/pad/fragment/PadAppCategoryFragment;

    .line 22
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 25
    move-result-object v3

    .line 26
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    move-result v3
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_c0

    .line 30
    const-string v4, "app"

    .line 32
    if-eqz v3, :cond_47

    .line 34
    :try_start_21
    invoke-virtual {p1}, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->getAppTag()Lcom/android/fileexplorer/dao/file/AppTag;

    .line 37
    move-result-object v1

    .line 38
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 40
    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 43
    const-string v3, "app_tag"

    .line 45
    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 48
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$4;->this$0:Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;

    .line 50
    invoke-static {v1}, Lmiuix/navigator/Navigator;->get(Landroidx/fragment/app/Fragment;)Lmiuix/navigator/Navigator;

    .line 53
    move-result-object v1

    .line 54
    new-instance v3, Lcom/android/fileexplorer/fragment/NavInfo/FragmentMethodAddNavInfo;

    .line 56
    invoke-virtual {p1}, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->getNavId()I

    .line 59
    move-result p1

    .line 60
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 63
    move-result-object v0

    .line 64
    invoke-direct {v3, p1, v0, v2}, Lcom/android/fileexplorer/fragment/NavInfo/FragmentMethodAddNavInfo;-><init>(ILjava/lang/Class;Landroid/os/Bundle;)V

    .line 67
    invoke-virtual {v1, v3}, Lmiuix/navigator/Navigator;->navigate(Lmiuix/navigator/navigatorinfo/NavigatorInfo;)V

    .line 70
    goto/16 :goto_d9

    .line 72
    :cond_47
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    move-result v3

    .line 76
    if-eqz v3, :cond_a9

    .line 78
    invoke-virtual {p1}, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->getIndex()Ljava/lang/String;

    .line 81
    move-result-object p1

    .line 82
    const/4 v0, -0x1

    .line 83
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 86
    move-result v3

    .line 87
    const v4, -0x2fa35742

    .line 90
    if-eq v3, v4, :cond_6b

    .line 92
    const v4, -0x2cb18472

    .line 95
    if-eq v3, v4, :cond_61

    .line 97
    goto :goto_74

    .line 98
    :cond_61
    const-string v3, "xspace"

    .line 100
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 103
    move-result p1

    .line 104
    if-eqz p1, :cond_74

    .line 106
    move v0, v1

    .line 107
    goto :goto_74

    .line 108
    :cond_6b
    const-string v3, "recorder"

    .line 110
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 113
    move-result p1

    .line 114
    if-eqz p1, :cond_74

    .line 116
    const/4 v0, 0x0

    .line 117
    :cond_74
    :goto_74
    if-eqz v0, :cond_9f

    .line 119
    if-eq v0, v1, :cond_79

    .line 121
    goto :goto_d9

    .line 122
    :cond_79
    invoke-static {}, Lcom/android/fileexplorer/model/StorageUtil;->getXSpaceStorageInfo()Lcom/android/fileexplorer/model/StorageInfo;

    .line 125
    move-result-object p1

    .line 126
    if-eqz p1, :cond_d9

    .line 128
    const-string p1, "current_directory"

    .line 130
    invoke-static {}, Lcom/android/fileexplorer/model/StorageUtil;->getXSpaceStorageInfo()Lcom/android/fileexplorer/model/StorageInfo;

    .line 133
    move-result-object v0

    .line 134
    invoke-virtual {v0}, Lcom/android/fileexplorer/model/StorageInfo;->getPath()Ljava/lang/String;

    .line 137
    move-result-object v0

    .line 138
    invoke-virtual {v2, p1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$4;->this$0:Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;

    .line 143
    invoke-static {p1}, Lmiuix/navigator/Navigator;->get(Landroidx/fragment/app/Fragment;)Lmiuix/navigator/Navigator;

    .line 146
    move-result-object p1

    .line 147
    new-instance v0, Lcom/android/fileexplorer/fragment/NavInfo/FragmentMethodAddNavInfo;

    .line 149
    const/16 v1, 0x5200

    .line 151
    const-class v3, Lcom/android/fileexplorer/pad/fragment/PadFileDetailFragment;

    .line 153
    invoke-direct {v0, v1, v3, v2}, Lcom/android/fileexplorer/fragment/NavInfo/FragmentMethodAddNavInfo;-><init>(ILjava/lang/Class;Landroid/os/Bundle;)V

    .line 156
    invoke-virtual {p1, v0}, Lmiuix/navigator/Navigator;->navigate(Lmiuix/navigator/navigatorinfo/NavigatorInfo;)V

    .line 159
    goto :goto_d9

    .line 160
    :cond_9f
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$4;->this$0:Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;

    .line 162
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 165
    move-result-object p1

    .line 166
    invoke-static {p1}, Lcom/android/fileexplorer/util/PageRouter;->routeToRecorder(Landroid/content/Context;)V

    .line 169
    goto :goto_d9

    .line 170
    :cond_a9
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$4;->this$0:Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;

    .line 172
    invoke-static {v1}, Lmiuix/navigator/Navigator;->get(Landroidx/fragment/app/Fragment;)Lmiuix/navigator/Navigator;

    .line 175
    move-result-object v1

    .line 176
    new-instance v3, Lcom/android/fileexplorer/fragment/NavInfo/FragmentMethodAddNavInfo;

    .line 178
    invoke-virtual {p1}, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->getNavId()I

    .line 181
    move-result p1

    .line 182
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 185
    move-result-object v0

    .line 186
    invoke-direct {v3, p1, v0, v2}, Lcom/android/fileexplorer/fragment/NavInfo/FragmentMethodAddNavInfo;-><init>(ILjava/lang/Class;Landroid/os/Bundle;)V

    .line 189
    invoke-virtual {v1, v3}, Lmiuix/navigator/Navigator;->navigate(Lmiuix/navigator/navigatorinfo/NavigatorInfo;)V
    :try_end_bf
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_bf} :catch_c0

    .line 192
    goto :goto_d9

    .line 193
    :catch_c0
    move-exception p1

    .line 194
    invoke-static {}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->access$100()Ljava/lang/String;

    .line 197
    move-result-object v0

    .line 198
    const-string v1, "onClickEntryError: "

    .line 200
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    move-result-object v1

    .line 204
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 207
    move-result-object p1

    .line 208
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 214
    move-result-object p1

    .line 215
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_d9
    :goto_d9
    return-void
.end method
