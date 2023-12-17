.class Lcom/bumptech/glide/GlideBuilder$2;
.super Ljava/lang/Object;
.source "GlideBuilder.java"

# interfaces
.implements Lcom/bumptech/glide/Glide$RequestOptionsFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bumptech/glide/GlideBuilder;->setDefaultRequestOptions(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/GlideBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/bumptech/glide/GlideBuilder;

.field public final synthetic val$requestOptions:Lcom/bumptech/glide/request/RequestOptions;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/GlideBuilder;Lcom/bumptech/glide/request/RequestOptions;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/bumptech/glide/GlideBuilder$2;->this$0:Lcom/bumptech/glide/GlideBuilder;

    .line 3
    iput-object p2, p0, Lcom/bumptech/glide/GlideBuilder$2;->val$requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public build()Lcom/bumptech/glide/request/RequestOptions;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/GlideBuilder$2;->val$requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    .line 3
    if-eqz v0, :cond_5

    .line 5
    goto :goto_a

    .line 6
    :cond_5
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    .line 8
    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    .line 11
    :goto_a
    return-object v0
.end method
