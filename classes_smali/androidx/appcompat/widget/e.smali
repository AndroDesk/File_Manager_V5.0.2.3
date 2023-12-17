.class public final Landroidx/appcompat/widget/e;
.super Ljava/lang/Object;
.source "AppCompatCheckedTextViewHelper.java"


# instance fields
.field public final a:Landroid/widget/CheckedTextView;

.field public b:Landroid/content/res/ColorStateList;

.field public c:Landroid/graphics/PorterDuff$Mode;

.field public d:Z

.field public e:Z

.field public f:Z


# direct methods
.method public constructor <init>(Landroid/widget/CheckedTextView;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Landroidx/appcompat/widget/e;->b:Landroid/content/res/ColorStateList;

    .line 7
    iput-object v0, p0, Landroidx/appcompat/widget/e;->c:Landroid/graphics/PorterDuff$Mode;

    .line 9
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Landroidx/appcompat/widget/e;->d:Z

    .line 12
    iput-boolean v0, p0, Landroidx/appcompat/widget/e;->e:Z

    .line 14
    iput-object p1, p0, Landroidx/appcompat/widget/e;->a:Landroid/widget/CheckedTextView;

    .line 16
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/e;->a:Landroid/widget/CheckedTextView;

    .line 3
    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->getCheckMarkDrawable()Landroid/graphics/drawable/Drawable;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_3a

    .line 9
    iget-boolean v1, p0, Landroidx/appcompat/widget/e;->d:Z

    .line 11
    if-nez v1, :cond_10

    .line 13
    iget-boolean v1, p0, Landroidx/appcompat/widget/e;->e:Z

    .line 15
    if-eqz v1, :cond_3a

    .line 17
    :cond_10
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 20
    move-result-object v0

    .line 21
    iget-boolean v1, p0, Landroidx/appcompat/widget/e;->d:Z

    .line 23
    if-eqz v1, :cond_1d

    .line 25
    iget-object v1, p0, Landroidx/appcompat/widget/e;->b:Landroid/content/res/ColorStateList;

    .line 27
    invoke-static {v0, v1}, Lg0/a$b;->h(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 30
    :cond_1d
    iget-boolean v1, p0, Landroidx/appcompat/widget/e;->e:Z

    .line 32
    if-eqz v1, :cond_26

    .line 34
    iget-object v1, p0, Landroidx/appcompat/widget/e;->c:Landroid/graphics/PorterDuff$Mode;

    .line 36
    invoke-static {v0, v1}, Lg0/a$b;->i(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 39
    :cond_26
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_35

    .line 45
    iget-object v1, p0, Landroidx/appcompat/widget/e;->a:Landroid/widget/CheckedTextView;

    .line 47
    invoke-virtual {v1}, Landroid/view/View;->getDrawableState()[I

    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 54
    :cond_35
    iget-object v1, p0, Landroidx/appcompat/widget/e;->a:Landroid/widget/CheckedTextView;

    .line 56
    invoke-virtual {v1, v0}, Landroid/widget/CheckedTextView;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 59
    :cond_3a
    return-void
.end method
