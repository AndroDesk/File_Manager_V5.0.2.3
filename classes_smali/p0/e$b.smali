.class public final Lp0/e$b;
.super Ljava/lang/Object;
.source "InputContentInfoCompat.java"

# interfaces
.implements Lp0/e$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp0/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Landroid/net/Uri;

.field public final b:Landroid/content/ClipDescription;

.field public final c:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Landroid/content/ClipDescription;Landroid/net/Uri;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp0/e$b;->a:Landroid/net/Uri;

    iput-object p2, p0, Lp0/e$b;->b:Landroid/content/ClipDescription;

    iput-object p3, p0, Lp0/e$b;->c:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final a()Landroid/net/Uri;
    .registers 2

    iget-object v0, p0, Lp0/e$b;->a:Landroid/net/Uri;

    return-object v0
.end method

.method public final b()V
    .registers 1

    return-void
.end method

.method public final c()Landroid/net/Uri;
    .registers 2

    iget-object v0, p0, Lp0/e$b;->c:Landroid/net/Uri;

    return-object v0
.end method

.method public final d()Landroid/content/ClipDescription;
    .registers 2

    iget-object v0, p0, Lp0/e$b;->b:Landroid/content/ClipDescription;

    return-object v0
.end method

.method public final e()Ljava/lang/Object;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method
