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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/app/a0;)V
    .registers 2

    iput-object p1, p0, Landroidx/appcompat/app/a0$b;->l:Landroidx/appcompat/app/a0;

    invoke-direct {p0}, La/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd()V
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/app/a0$b;->l:Landroidx/appcompat/app/a0;

    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/appcompat/app/a0;->z:Lm/g;

    iget-object v0, v0, Landroidx/appcompat/app/a0;->e:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    return-void
.end method
