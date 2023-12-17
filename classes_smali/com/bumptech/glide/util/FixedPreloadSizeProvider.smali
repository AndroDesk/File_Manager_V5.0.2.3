.class public Lcom/bumptech/glide/util/FixedPreloadSizeProvider;
.super Ljava/lang/Object;
.source "FixedPreloadSizeProvider.java"

# interfaces
.implements Lcom/bumptech/glide/ListPreloader$PreloadSizeProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/ListPreloader$PreloadSizeProvider<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final size:[I


# direct methods
.method public constructor <init>(II)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x2

    .line 5
    new-array v0, v0, [I

    .line 7
    const/4 v1, 0x0

    .line 8
    aput p1, v0, v1

    .line 10
    const/4 p1, 0x1

    .line 11
    aput p2, v0, p1

    .line 13
    iput-object v0, p0, Lcom/bumptech/glide/util/FixedPreloadSizeProvider;->size:[I

    .line 15
    return-void
.end method


# virtual methods
.method public getPreloadSize(Ljava/lang/Object;II)[I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)[I"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/bumptech/glide/util/FixedPreloadSizeProvider;->size:[I

    .line 3
    return-object p1
.end method
