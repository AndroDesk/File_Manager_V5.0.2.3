.class Lcom/bumptech/glide/GlideBuilder$1;
.super Ljava/lang/Object;
.source "GlideBuilder.java"

# interfaces
.implements Lcom/bumptech/glide/Glide$RequestOptionsFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/GlideBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/bumptech/glide/GlideBuilder;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/GlideBuilder;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/bumptech/glide/GlideBuilder$1;->this$0:Lcom/bumptech/glide/GlideBuilder;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public build()Lcom/bumptech/glide/request/RequestOptions;
    .registers 2

    .line 1
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    .line 3
    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    .line 6
    return-object v0
.end method
