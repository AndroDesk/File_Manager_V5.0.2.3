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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lm0/w;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm0/g0$q;->a:Lm0/w;

    return-void
.end method


# virtual methods
.method public final onReceiveContent(Landroid/view/View;Landroid/view/ContentInfo;)Landroid/view/ContentInfo;
    .registers 5

    new-instance v0, Lm0/c;

    new-instance v1, Lm0/c$d;

    invoke-direct {v1, p2}, Lm0/c$d;-><init>(Landroid/view/ContentInfo;)V

    invoke-direct {v0, v1}, Lm0/c;-><init>(Lm0/c$e;)V

    iget-object v1, p0, Lm0/g0$q;->a:Lm0/w;

    invoke-interface {v1, p1, v0}, Lm0/w;->a(Landroid/view/View;Lm0/c;)Lm0/c;

    move-result-object p1

    if-nez p1, :cond_14

    const/4 p1, 0x0

    return-object p1

    :cond_14
    if-ne p1, v0, :cond_17

    return-object p2

    :cond_17
    iget-object p1, p1, Lm0/c;->a:Lm0/c$e;

    invoke-interface {p1}, Lm0/c$e;->c()Landroid/view/ContentInfo;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method
