.class public final Lm0/c$c;
.super Ljava/lang/Object;
.source "ContentInfoCompat.java"

# interfaces
.implements Lm0/c$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm0/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public a:Landroid/content/ClipData;

.field public b:I

.field public c:I

.field public d:Landroid/net/Uri;

.field public e:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/content/ClipData;I)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lm0/c$c;->a:Landroid/content/ClipData;

    .line 6
    iput p2, p0, Lm0/c$c;->b:I

    .line 8
    return-void
.end method


# virtual methods
.method public final a(Landroid/net/Uri;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lm0/c$c;->d:Landroid/net/Uri;

    .line 3
    return-void
.end method

.method public final b(I)V
    .registers 2

    .line 1
    iput p1, p0, Lm0/c$c;->c:I

    .line 3
    return-void
.end method

.method public final build()Lm0/c;
    .registers 3

    .line 1
    new-instance v0, Lm0/c;

    .line 3
    new-instance v1, Lm0/c$f;

    .line 5
    invoke-direct {v1, p0}, Lm0/c$f;-><init>(Lm0/c$c;)V

    .line 8
    invoke-direct {v0, v1}, Lm0/c;-><init>(Lm0/c$e;)V

    .line 11
    return-object v0
.end method

.method public final setExtras(Landroid/os/Bundle;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lm0/c$c;->e:Landroid/os/Bundle;

    .line 3
    return-void
.end method
