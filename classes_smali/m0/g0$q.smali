.class public final Lm0/g0$q;
.super Ljava/lang/Object;
.source "ViewCompat.java"

# interfaces
.implements Landroid/view/OnReceiveContentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm0/g0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "q"
.end annotation


# instance fields
.field public final a:Lm0/w;


# direct methods
.method public constructor <init>(Lm0/w;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lm0/g0$q;->a:Lm0/w;

    .line 6
    return-void
.end method


# virtual methods
.method public final onReceiveContent(Landroid/view/View;Landroid/view/ContentInfo;)Landroid/view/ContentInfo;
    .registers 5

    .line 1
    new-instance v0, Lm0/c;

    .line 3
    new-instance v1, Lm0/c$d;

    .line 5
    invoke-direct {v1, p2}, Lm0/c$d;-><init>(Landroid/view/ContentInfo;)V

    .line 8
    invoke-direct {v0, v1}, Lm0/c;-><init>(Lm0/c$e;)V

    .line 11
    iget-object v1, p0, Lm0/g0$q;->a:Lm0/w;

    .line 13
    invoke-interface {v1, p1, v0}, Lm0/w;->a(Landroid/view/View;Lm0/c;)Lm0/c;

    .line 16
    move-result-object p1

    .line 17
    if-nez p1, :cond_14

    .line 19
    const/4 p1, 0x0

    .line 20
    return-object p1

    .line 21
    :cond_14
    if-ne p1, v0, :cond_17

    .line 23
    return-object p2

    .line 24
    :cond_17
    iget-object p1, p1, Lm0/c;->a:Lm0/c$e;

    .line 26
    invoke-interface {p1}, Lm0/c$e;->c()Landroid/view/ContentInfo;

    .line 29
    move-result-object p1

    .line 30
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    return-object p1
.end method
