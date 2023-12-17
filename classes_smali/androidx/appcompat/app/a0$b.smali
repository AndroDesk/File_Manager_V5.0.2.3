.class public final Landroidx/appcompat/app/a0$b;
.super La/b;
.source "WindowDecorActionBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic l:Landroidx/appcompat/app/a0;


# direct methods
.method public constructor <init>(Landroidx/appcompat/app/a0;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/appcompat/app/a0$b;->l:Landroidx/appcompat/app/a0;

    .line 3
    invoke-direct {p0}, La/b;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onAnimationEnd()V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/a0$b;->l:Landroidx/appcompat/app/a0;

    .line 3
    const/4 v1, 0x0

    .line 4
    iput-object v1, v0, Landroidx/appcompat/app/a0;->z:Lm/g;

    .line 6
    iget-object v0, v0, Landroidx/appcompat/app/a0;->e:Landroidx/appcompat/widget/ActionBarContainer;

    .line 8
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 11
    return-void
.end method
