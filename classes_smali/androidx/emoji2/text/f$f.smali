.class public final Landroidx/emoji2/text/f$f;
.super Ljava/lang/Object;
.source "EmojiCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji2/text/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public final b:I


# direct methods
.method public constructor <init>(Ljava/util/List;ILjava/lang/Throwable;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    if-eqz p1, :cond_f

    .line 6
    new-instance p3, Ljava/util/ArrayList;

    .line 8
    invoke-direct {p3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 11
    iput-object p3, p0, Landroidx/emoji2/text/f$f;->a:Ljava/util/ArrayList;

    .line 13
    iput p2, p0, Landroidx/emoji2/text/f$f;->b:I

    .line 15
    return-void

    .line 16
    :cond_f
    new-instance p1, Ljava/lang/NullPointerException;

    .line 18
    const-string p2, "initCallbacks cannot be null"

    .line 20
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 23
    throw p1
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/emoji2/text/f$f;->a:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 7
    iget v1, p0, Landroidx/emoji2/text/f$f;->b:I

    .line 9
    const/4 v2, 0x1

    .line 10
    const/4 v3, 0x0

    .line 11
    if-eq v1, v2, :cond_1c

    .line 13
    :goto_c
    if-ge v3, v0, :cond_2c

    .line 15
    iget-object v1, p0, Landroidx/emoji2/text/f$f;->a:Ljava/util/ArrayList;

    .line 17
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Landroidx/emoji2/text/f$e;

    .line 23
    invoke-virtual {v1}, Landroidx/emoji2/text/f$e;->a()V

    .line 26
    add-int/lit8 v3, v3, 0x1

    .line 28
    goto :goto_c

    .line 29
    :cond_1c
    :goto_1c
    if-ge v3, v0, :cond_2c

    .line 31
    iget-object v1, p0, Landroidx/emoji2/text/f$f;->a:Ljava/util/ArrayList;

    .line 33
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Landroidx/emoji2/text/f$e;

    .line 39
    invoke-virtual {v1}, Landroidx/emoji2/text/f$e;->b()V

    .line 42
    add-int/lit8 v3, v3, 0x1

    .line 44
    goto :goto_1c

    .line 45
    :cond_2c
    return-void
.end method
