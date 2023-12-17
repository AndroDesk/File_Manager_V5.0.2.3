.class public Lcom/android/fileexplorer/adapter/AppTagListAdapter;
.super Landroid/widget/BaseAdapter;
.source "AppTagListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/adapter/AppTagListAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AppTagListAdapter"


# instance fields
.field private mAppTagList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/file/AppTag;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mLayoutInflater:Landroid/view/LayoutInflater;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/file/AppTag;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/adapter/AppTagListAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/android/fileexplorer/adapter/AppTagListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    iput-object p2, p0, Lcom/android/fileexplorer/adapter/AppTagListAdapter;->mAppTagList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/AppTagListAdapter;->mAppTagList:Ljava/util/List;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/AppTagListAdapter;->mAppTagList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 13

    if-nez p2, :cond_1a

    iget-object p2, p0, Lcom/android/fileexplorer/adapter/AppTagListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v0, 0x7f042d1d

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lcom/android/fileexplorer/adapter/AppTagListAdapter$ViewHolder;

    const/4 v0, 0x0

    invoke-direct {p3, p2, v0}, Lcom/android/fileexplorer/adapter/AppTagListAdapter$ViewHolder;-><init>(Landroid/view/View;Lcom/android/fileexplorer/adapter/AppTagListAdapter$1;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_20

    :cond_1a
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/fileexplorer/adapter/AppTagListAdapter$ViewHolder;

    :goto_20
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/adapter/AppTagListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/dao/file/AppTag;

    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/AppTag;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.fileexplorer.apk"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "AppTagListAdapter"

    if-eqz v1, :cond_44

    const-string v0, "getView: apk"

    invoke-static {v2, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p3}, Lcom/android/fileexplorer/adapter/AppTagListAdapter$ViewHolder;->access$100(Lcom/android/fileexplorer/adapter/AppTagListAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0806a7

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_8a

    :cond_44
    const-string v1, "com.android.fileexplorer.zip"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5c

    const-string v0, "getView: zip"

    invoke-static {v2, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p3}, Lcom/android/fileexplorer/adapter/AppTagListAdapter$ViewHolder;->access$100(Lcom/android/fileexplorer/adapter/AppTagListAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0806a8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_8a

    :cond_5c
    const-string v1, "com.miui.mishare.connectivity"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6f

    invoke-static {p3}, Lcom/android/fileexplorer/adapter/AppTagListAdapter$ViewHolder;->access$100(Lcom/android/fileexplorer/adapter/AppTagListAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f08017b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_8a

    :cond_6f
    invoke-static {}, Lcom/android/fileexplorer/model/FileIconHelper;->getInstance()Lcom/android/fileexplorer/model/FileIconHelper;

    move-result-object v2

    iget-object v1, p0, Lcom/android/fileexplorer/adapter/AppTagListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/fileexplorer/util/DeviceUtils;->isInMirrorMode(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/fileexplorer/apptag/AppIconHelper;->getAppIconAssetsPath(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f0800cf

    invoke-static {p3}, Lcom/android/fileexplorer/adapter/AppTagListAdapter$ViewHolder;->access$100(Lcom/android/fileexplorer/adapter/AppTagListAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/android/fileexplorer/model/FileIconHelper;->loadInto(Ljava/lang/String;IIILandroid/widget/ImageView;Z)V

    :goto_8a
    invoke-static {p1}, Lcom/android/fileexplorer/apptag/FileUtils;->getTagAppName(Lcom/android/fileexplorer/dao/file/AppTag;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_98

    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/AppTag;->getAppName()Ljava/lang/String;

    move-result-object v0

    :cond_98
    invoke-static {p3}, Lcom/android/fileexplorer/adapter/AppTagListAdapter$ViewHolder;->access$200(Lcom/android/fileexplorer/adapter/AppTagListAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p3}, Lcom/android/fileexplorer/adapter/AppTagListAdapter$ViewHolder;->access$300(Lcom/android/fileexplorer/adapter/AppTagListAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object p3

    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/AppTag;->getFileCount()I

    move-result p1

    invoke-static {p1}, Lcom/android/fileexplorer/model/Util;->formatDirectoryFileCount(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method
