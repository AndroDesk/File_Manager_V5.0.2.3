.class public Lcom/bumptech/glide/load/model/StringLoader;
.super Ljava/lang/Object;
.source "StringLoader.java"

# interfaces
.implements Lcom/bumptech/glide/load/model/ModelLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/model/StringLoader$AssetFileDescriptorFactory;,
        Lcom/bumptech/glide/load/model/StringLoader$FileDescriptorFactory;,
        Lcom/bumptech/glide/load/model/StringLoader$StreamFactory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/model/ModelLoader<",
        "Ljava/lang/String;",
        "TData;>;"
    }
.end annotation


# instance fields
.field private final uriLoader:Lcom/bumptech/glide/load/model/ModelLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/model/ModelLoader<",
            "Landroid/net/Uri;",
            "TData;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/model/ModelLoader;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/model/ModelLoader<",
            "Landroid/net/Uri;",
            "TData;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/bumptech/glide/load/model/StringLoader;->uriLoader:Lcom/bumptech/glide/load/model/ModelLoader;

    .line 6
    return-void
.end method

.method private static parseUri(Ljava/lang/String;)Landroid/net/Uri;
    .registers 3

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_8

    .line 7
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :cond_8
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    .line 13
    move-result v0

    .line 14
    const/16 v1, 0x2f

    .line 16
    if-ne v0, v1, :cond_16

    .line 18
    invoke-static {p0}, Lcom/bumptech/glide/load/model/StringLoader;->toFileUri(Ljava/lang/String;)Landroid/net/Uri;

    .line 21
    move-result-object p0

    .line 22
    goto :goto_26

    .line 23
    :cond_16
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 30
    move-result-object v1

    .line 31
    if-nez v1, :cond_25

    .line 33
    invoke-static {p0}, Lcom/bumptech/glide/load/model/StringLoader;->toFileUri(Ljava/lang/String;)Landroid/net/Uri;

    .line 36
    move-result-object p0

    .line 37
    goto :goto_26

    .line 38
    :cond_25
    move-object p0, v0

    .line 39
    :goto_26
    return-object p0
.end method

.method private static toFileUri(Ljava/lang/String;)Landroid/net/Uri;
    .registers 2

    .line 1
    new-instance v0, Ljava/io/File;

    .line 3
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method


# virtual methods
.method public bridge synthetic buildLoadData(Ljava/lang/Object;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/model/ModelLoader$LoadData;
    .registers 5

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/bumptech/glide/load/model/StringLoader;->buildLoadData(Ljava/lang/String;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    move-result-object p1

    return-object p1
.end method

.method public buildLoadData(Ljava/lang/String;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/model/ModelLoader$LoadData;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Lcom/bumptech/glide/load/Options;",
            ")",
            "Lcom/bumptech/glide/load/model/ModelLoader$LoadData<",
            "TData;>;"
        }
    .end annotation

    .line 2
    invoke-static {p1}, Lcom/bumptech/glide/load/model/StringLoader;->parseUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_16

    .line 3
    iget-object v0, p0, Lcom/bumptech/glide/load/model/StringLoader;->uriLoader:Lcom/bumptech/glide/load/model/ModelLoader;

    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/model/ModelLoader;->handles(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_16

    .line 4
    :cond_f
    iget-object v0, p0, Lcom/bumptech/glide/load/model/StringLoader;->uriLoader:Lcom/bumptech/glide/load/model/ModelLoader;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/bumptech/glide/load/model/ModelLoader;->buildLoadData(Ljava/lang/Object;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    move-result-object p1

    return-object p1

    :cond_16
    :goto_16
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic handles(Ljava/lang/Object;)Z
    .registers 2

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 3
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/load/model/StringLoader;->handles(Ljava/lang/String;)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public handles(Ljava/lang/String;)Z
    .registers 2

    const/4 p1, 0x1

    return p1
.end method
