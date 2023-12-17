.class public Landroidx/appcompat/app/q;
.super Landroidx/activity/g;
.source "AppCompatDialog.java"

# interfaces
.implements Landroidx/appcompat/app/i;


# instance fields
.field private mDelegate:Landroidx/appcompat/app/k;

.field private final mKeyDispatcher:Lm0/h$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/appcompat/app/q;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 5

    invoke-static {p1, p2}, Landroidx/appcompat/app/q;->getThemeResId(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroidx/activity/g;-><init>(Landroid/content/Context;I)V

    new-instance v0, Landroidx/appcompat/app/p;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Landroidx/appcompat/app/p;-><init>(Landroidx/appcompat/app/q;I)V

    iput-object v0, p0, Landroidx/appcompat/app/q;->mKeyDispatcher:Lm0/h$a;

    invoke-virtual {p0}, Landroidx/appcompat/app/q;->getDelegate()Landroidx/appcompat/app/k;

    move-result-object v0

    invoke-static {p1, p2}, Landroidx/appcompat/app/q;->getThemeResId(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/k;->x(I)V

    invoke-virtual {v0}, Landroidx/appcompat/app/k;->n()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .registers 5

    invoke-direct {p0, p1}, Landroidx/activity/g;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroidx/appcompat/app/p;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Landroidx/appcompat/app/p;-><init>(Landroidx/appcompat/app/q;I)V

    iput-object p1, p0, Landroidx/appcompat/app/q;->mKeyDispatcher:Lm0/h$a;

    invoke-virtual {p0, p2}, Landroid/app/Dialog;->setCancelable(Z)V

    invoke-virtual {p0, p3}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method

.method private static getThemeResId(Landroid/content/Context;I)I
    .registers 4

    if-nez p1, :cond_13

    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    sget v0, Lh/a;->dialogTheme:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget p1, p1, Landroid/util/TypedValue;->resourceId:I

    :cond_13
    return p1
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4

    invoke-virtual {p0}, Landroidx/appcompat/app/q;->getDelegate()Landroidx/appcompat/app/k;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/app/k;->a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public dismiss()V
    .registers 2

    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    invoke-virtual {p0}, Landroidx/appcompat/app/q;->getDelegate()Landroidx/appcompat/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/k;->o()V

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 4

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/app/q;->mKeyDispatcher:Lm0/h$a;

    invoke-static {v1, v0, p0, p1}, Lm0/h;->b(Lm0/h$a;Landroid/view/View;Landroid/view/Window$Callback;Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public findViewById(I)Landroid/view/View;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/appcompat/app/q;->getDelegate()Landroidx/appcompat/app/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/k;->d(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getDelegate()Landroidx/appcompat/app/k;
    .registers 4

    iget-object v0, p0, Landroidx/appcompat/app/q;->mDelegate:Landroidx/appcompat/app/k;

    if-nez v0, :cond_15

    sget-object v0, Landroidx/appcompat/app/k;->a:Landroidx/appcompat/app/t$a;

    new-instance v0, Landroidx/appcompat/app/AppCompatDelegateImpl;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-direct {v0, v1, v2, p0, p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;-><init>(Landroid/content/Context;Landroid/view/Window;Landroidx/appcompat/app/i;Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/appcompat/app/q;->mDelegate:Landroidx/appcompat/app/k;

    :cond_15
    iget-object v0, p0, Landroidx/appcompat/app/q;->mDelegate:Landroidx/appcompat/app/k;

    return-object v0
.end method

.method public getSupportActionBar()Landroidx/appcompat/app/a;
    .registers 2

    invoke-virtual {p0}, Landroidx/appcompat/app/q;->getDelegate()Landroidx/appcompat/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/k;->i()Landroidx/appcompat/app/a0;

    move-result-object v0

    return-object v0
.end method

.method public invalidateOptionsMenu()V
    .registers 2

    invoke-virtual {p0}, Landroidx/appcompat/app/q;->getDelegate()Landroidx/appcompat/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/k;->k()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    invoke-virtual {p0}, Landroidx/appcompat/app/q;->getDelegate()Landroidx/appcompat/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/k;->j()V

    invoke-super {p0, p1}, Landroidx/activity/g;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/appcompat/app/q;->getDelegate()Landroidx/appcompat/app/k;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/k;->n()V

    return-void
.end method

.method public onStop()V
    .registers 2

    invoke-super {p0}, Landroidx/activity/g;->onStop()V

    invoke-virtual {p0}, Landroidx/appcompat/app/q;->getDelegate()Landroidx/appcompat/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/k;->r()V

    return-void
.end method

.method public onSupportActionModeFinished(Lm/a;)V
    .registers 2

    return-void
.end method

.method public onSupportActionModeStarted(Lm/a;)V
    .registers 2

    return-void
.end method

.method public onWindowStartingSupportActionMode(Lm/a$a;)Lm/a;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public setContentView(I)V
    .registers 3

    invoke-virtual {p0}, Landroidx/appcompat/app/q;->getDelegate()Landroidx/appcompat/app/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/k;->u(I)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .registers 3

    invoke-virtual {p0}, Landroidx/appcompat/app/q;->getDelegate()Landroidx/appcompat/app/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/k;->v(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4

    invoke-virtual {p0}, Landroidx/appcompat/app/q;->getDelegate()Landroidx/appcompat/app/k;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/app/k;->w(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setTitle(I)V
    .registers 4

    invoke-super {p0, p1}, Landroid/app/Dialog;->setTitle(I)V

    invoke-virtual {p0}, Landroidx/appcompat/app/q;->getDelegate()Landroidx/appcompat/app/k;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/k;->y(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroidx/appcompat/app/q;->getDelegate()Landroidx/appcompat/app/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/k;->y(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public superDispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 2

    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public supportRequestWindowFeature(I)Z
    .registers 3

    invoke-virtual {p0}, Landroidx/appcompat/app/q;->getDelegate()Landroidx/appcompat/app/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/k;->t(I)Z

    move-result p1

    return p1
.end method
