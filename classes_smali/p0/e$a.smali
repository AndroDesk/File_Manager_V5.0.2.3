.class public final Lp0/e$a;
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
    name = "a"
.end annotation


# instance fields
.field public final a:Landroid/view/inputmethod/InputContentInfo;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Landroid/content/ClipDescription;Landroid/net/Uri;)V
    .registers 5

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Landroid/view/inputmethod/InputContentInfo;

    invoke-direct {v0, p1, p2, p3}, Landroid/view/inputmethod/InputContentInfo;-><init>(Landroid/net/Uri;Landroid/content/ClipDescription;Landroid/net/Uri;)V

    iput-object v0, p0, Lp0/e$a;->a:Landroid/view/inputmethod/InputContentInfo;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    check-cast p1, Landroid/view/inputmethod/InputContentInfo;

    iput-object p1, p0, Lp0/e$a;->a:Landroid/view/inputmethod/InputContentInfo;

    return-void
.end method


# virtual methods
.method public final a()Landroid/net/Uri;
    .registers 2

    .line 1
    iget-object v0, p0, Lp0/e$a;->a:Landroid/view/inputmethod/InputContentInfo;

    .line 3
    invoke-virtual {v0}, Landroid/view/inputmethod/InputContentInfo;->getContentUri()Landroid/net/Uri;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final b()V
    .registers 2

    .line 1
    iget-object v0, p0, Lp0/e$a;->a:Landroid/view/inputmethod/InputContentInfo;

    .line 3
    invoke-virtual {v0}, Landroid/view/inputmethod/InputContentInfo;->requestPermission()V

    .line 6
    return-void
.end method

.method public final c()Landroid/net/Uri;
    .registers 2

    .line 1
    iget-object v0, p0, Lp0/e$a;->a:Landroid/view/inputmethod/InputContentInfo;

    .line 3
    invoke-virtual {v0}, Landroid/view/inputmethod/InputContentInfo;->getLinkUri()Landroid/net/Uri;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final d()Landroid/content/ClipDescription;
    .registers 2

    .line 1
    iget-object v0, p0, Lp0/e$a;->a:Landroid/view/inputmethod/InputContentInfo;

    .line 3
    invoke-virtual {v0}, Landroid/view/inputmethod/InputContentInfo;->getDescription()Landroid/content/ClipDescription;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final e()Ljava/lang/Object;
    .registers 2

    .line 1
    iget-object v0, p0, Lp0/e$a;->a:Landroid/view/inputmethod/InputContentInfo;

    .line 3
    return-object v0
.end method
