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

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/fileexplorer/adapter/AppTagListAdapter;->mContext:Landroid/content/Context;

    .line 6
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/android/fileexplorer/adapter/AppTagListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 12
    iput-object p2, p0, Lcom/android/fileexplorer/adapter/AppTagListAdapter;->mAppTagList:Ljava/util/List;

    .line 14
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/AppTagListAdapter;->mAppTagList:Ljava/util/List;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    move-result v0

    .line 9
    goto :goto_a

    .line 10
    :cond_9
    const/4 v0, 0x0

    .line 11
    :goto_a
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/AppTagListAdapter;->mAppTagList:Ljava/util/List;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public getItemId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 13

    .line 1
    if-nez p2, :cond_16

    .line 3
    iget-object p2, p0, Lcom/android/fileexplorer/adapter/AppTagListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 5
    const v0, 0x7f0d008b

    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 12
    move-result-object p2

    .line 13
    new-instance p3, Lcom/android/fileexplorer/adapter/AppTagListAdapter$ViewHolder;

    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-direct {p3, p2, v0}, Lcom/android/fileexplorer/adapter/AppTagListAdapter$ViewHolder;-><init>(Landroid/view/View;Lcom/android/fileexplorer/adapter/AppTagListAdapter$1;)V

    .line 19
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 22
    goto :goto_1c

    .line 23
    :cond_16
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 26
    move-result-object p3

    .line 27
    check-cast p3, Lcom/android/fileexplorer/adapter/AppTagListAdapter$ViewHolder;

    .line 29
    :goto_1c
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/adapter/AppTagListAdapter;->getItem(I)Ljava/lang/Object;

    .line 32
    move-result-object p1

    .line 33
    check-cast p1, Lcom/android/fileexplorer/dao/file/AppTag;

    .line 35
    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/AppTag;->getPackageName()Ljava/lang/String;

    .line 38
    move-result-object v0

    .line 39
    const-string v1, "com.android.fileexplorer.apk"

    .line 41
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 44
    move-result v1

    .line 45
    const-string v2, "AppTagListAdapter"

    .line 47
    if-eqz v1, :cond_40

    .line 49
    const-string v0, "getView: apk"

    .line 51
    invoke-static {v2, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-static {p3}, Lcom/android/fileexplorer/adapter/AppTagListAdapter$ViewHolder;->access$100(Lcom/android/fileexplorer/adapter/AppTagListAdapter$ViewHolder;)Landroid/widget/ImageView;

    .line 57
    move-result-object v0

    .line 58
    const v1, 0x7f0806a7

    .line 61
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 64
    goto :goto_86

    .line 65
    :cond_40
    const-string v1, "com.android.fileexplorer.zip"

    .line 67
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 70
    move-result v1

    .line 71
    if-eqz v1, :cond_58

    .line 73
    const-string v0, "getView: zip"

    .line 75
    invoke-static {v2, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-static {p3}, Lcom/android/fileexplorer/adapter/AppTagListAdapter$ViewHolder;->access$100(Lcom/android/fileexplorer/adapter/AppTagListAdapter$ViewHolder;)Landroid/widget/ImageView;

    .line 81
    move-result-object v0

    .line 82
    const v1, 0x7f0806a8

    .line 85
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 88
    goto :goto_86

    .line 89
    :cond_58
    const-string v1, "com.miui.mishare.connectivity"

    .line 91
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 94
    move-result v1

    .line 95
    if-eqz v1, :cond_6b

    .line 97
    invoke-static {p3}, Lcom/android/fileexplorer/adapter/AppTagListAdapter$ViewHolder;->access$100(Lcom/android/fileexplorer/adapter/AppTagListAdapter$ViewHolder;)Landroid/widget/ImageView;

    .line 100
    move-result-object v0

    .line 101
    const v1, 0x7f08017b

    .line 104
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 107
    goto :goto_86

    .line 108
    :cond_6b
    invoke-static {}, Lcom/android/fileexplorer/model/FileIconHelper;->getInstance()Lcom/android/fileexplorer/model/FileIconHelper;

    .line 111
    move-result-object v2

    .line 112
    iget-object v1, p0, Lcom/android/fileexplorer/adapter/AppTagListAdapter;->mContext:Landroid/content/Context;

    .line 114
    invoke-static {v1}, Lcom/android/fileexplorer/util/DeviceUtils;->isInMirrorMode(Landroid/content/Context;)Z

    .line 117
    move-result v1

    .line 118
    invoke-static {v0, v1}, Lcom/android/fileexplorer/apptag/AppIconHelper;->getAppIconAssetsPath(Ljava/lang/String;Z)Ljava/lang/String;

    .line 121
    move-result-object v3

    .line 122
    const/4 v4, 0x0

    .line 123
    const/4 v5, 0x0

    .line 124
    const v6, 0x7f0800cf

    .line 127
    invoke-static {p3}, Lcom/android/fileexplorer/adapter/AppTagListAdapter$ViewHolder;->access$100(Lcom/android/fileexplorer/adapter/AppTagListAdapter$ViewHolder;)Landroid/widget/ImageView;

    .line 130
    move-result-object v7

    .line 131
    const/4 v8, 0x0

    .line 132
    invoke-virtual/range {v2 .. v8}, Lcom/android/fileexplorer/model/FileIconHelper;->loadInto(Ljava/lang/String;IIILandroid/widget/ImageView;Z)V

    .line 135
    :goto_86
    invoke-static {p1}, Lcom/android/fileexplorer/apptag/FileUtils;->getTagAppName(Lcom/android/fileexplorer/dao/file/AppTag;)Ljava/lang/String;

    .line 138
    move-result-object v0

    .line 139
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 142
    move-result v1

    .line 143
    if-eqz v1, :cond_94

    .line 145
    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/AppTag;->getAppName()Ljava/lang/String;

    .line 148
    move-result-object v0

    .line 149
    :cond_94
    invoke-static {p3}, Lcom/android/fileexplorer/adapter/AppTagListAdapter$ViewHolder;->access$200(Lcom/android/fileexplorer/adapter/AppTagListAdapter$ViewHolder;)Landroid/widget/TextView;

    .line 152
    move-result-object v1

    .line 153
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    invoke-static {p3}, Lcom/android/fileexplorer/adapter/AppTagListAdapter$ViewHolder;->access$300(Lcom/android/fileexplorer/adapter/AppTagListAdapter$ViewHolder;)Landroid/widget/TextView;

    .line 159
    move-result-object p3

    .line 160
    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/AppTag;->getFileCount()I

    .line 163
    move-result p1

    .line 164
    invoke-static {p1}, Lcom/android/fileexplorer/model/Util;->formatDirectoryFileCount(I)Ljava/lang/String;

    .line 167
    move-result-object p1

    .line 168
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    return-object p2
.end method
