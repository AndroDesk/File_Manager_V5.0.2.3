.class public Landroidx/appcompat/widget/SearchView$SearchAutoComplete;
.super Landroidx/appcompat/widget/c;
.source "SearchView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/SearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SearchAutoComplete"
.end annotation


# instance fields
.field public a:I

.field public b:Landroidx/appcompat/widget/SearchView;

.field public c:Z

.field public final d:Landroidx/appcompat/widget/SearchView$SearchAutoComplete$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 1
    sget v0, Lh/a;->autoCompleteTextViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/c;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    new-instance p1, Landroidx/appcompat/widget/SearchView$SearchAutoComplete$a;

    invoke-direct {p1, p0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete$a;-><init>(Landroidx/appcompat/widget/SearchView$SearchAutoComplete;)V

    iput-object p1, p0, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->d:Landroidx/appcompat/widget/SearchView$SearchAutoComplete$a;

    .line 4
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getThreshold()I

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->a:I

    return-void
.end method

.method private getSearchViewTextMinWidthDp()I
    .registers 5

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 8
    move-result-object v0

    .line 9
    iget v1, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 11
    iget v2, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 13
    const/16 v3, 0x3c0

    .line 15
    if-lt v1, v3, :cond_1c

    .line 17
    const/16 v3, 0x2d0

    .line 19
    if-lt v2, v3, :cond_1c

    .line 21
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 23
    const/4 v3, 0x2

    .line 24
    if-ne v0, v3, :cond_1c

    .line 26
    const/16 v0, 0x100

    .line 28
    return v0

    .line 29
    :cond_1c
    const/16 v0, 0x258

    .line 31
    if-ge v1, v0, :cond_2c

    .line 33
    const/16 v0, 0x280

    .line 35
    if-lt v1, v0, :cond_29

    .line 37
    const/16 v0, 0x1e0

    .line 39
    if-lt v2, v0, :cond_29

    .line 41
    goto :goto_2c

    .line 42
    :cond_29
    const/16 v0, 0xa0

    .line 44
    return v0

    .line 45
    :cond_2c
    :goto_2c
    const/16 v0, 0xc0

    .line 47
    return v0
.end method


# virtual methods
.method public final a()V
    .registers 5

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/4 v1, 0x1

    .line 4
    const/16 v2, 0x1d

    .line 6
    if-lt v0, v2, :cond_14

    .line 8
    invoke-static {p0, v1}, Landroidx/appcompat/widget/SearchView$k;->b(Landroidx/appcompat/widget/SearchView$SearchAutoComplete;I)V

    .line 11
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->enoughToFilter()Z

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_2a

    .line 17
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->showDropDown()V

    .line 20
    goto :goto_2a

    .line 21
    :cond_14
    sget-object v0, Landroidx/appcompat/widget/SearchView;->T:Landroidx/appcompat/widget/SearchView$o;

    .line 23
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    invoke-static {}, Landroidx/appcompat/widget/SearchView$o;->a()V

    .line 29
    iget-object v0, v0, Landroidx/appcompat/widget/SearchView$o;->c:Ljava/lang/reflect/Method;

    .line 31
    if-eqz v0, :cond_2a

    .line 33
    :try_start_20
    new-array v1, v1, [Ljava/lang/Object;

    .line 35
    const/4 v2, 0x0

    .line 36
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 38
    aput-object v3, v1, v2

    .line 40
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_2a} :catch_2a

    .line 43
    :catch_2a
    :cond_2a
    :goto_2a
    return-void
.end method

.method public final enoughToFilter()Z
    .registers 2

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->a:I

    .line 3
    if-lez v0, :cond_d

    .line 5
    invoke-super {p0}, Landroid/widget/AutoCompleteTextView;->enoughToFilter()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_b

    .line 11
    goto :goto_d

    .line 12
    :cond_b
    const/4 v0, 0x0

    .line 13
    goto :goto_e

    .line 14
    :cond_d
    :goto_d
    const/4 v0, 0x1

    .line 15
    :goto_e
    return v0
.end method

.method public final onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/widget/c;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    .line 4
    move-result-object p1

    .line 5
    iget-boolean v0, p0, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->c:Z

    .line 7
    if-eqz v0, :cond_12

    .line 9
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->d:Landroidx/appcompat/widget/SearchView$SearchAutoComplete$a;

    .line 11
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 14
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->d:Landroidx/appcompat/widget/SearchView$SearchAutoComplete$a;

    .line 16
    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 19
    :cond_12
    return-object p1
.end method

.method public final onFinishInflate()V
    .registers 4

    .line 1
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 11
    move-result-object v0

    .line 12
    invoke-direct {p0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->getSearchViewTextMinWidthDp()I

    .line 15
    move-result v1

    .line 16
    int-to-float v1, v1

    .line 17
    const/4 v2, 0x1

    .line 18
    invoke-static {v2, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 21
    move-result v0

    .line 22
    float-to-int v0, v0

    .line 23
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 26
    return-void
.end method

.method public final onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 4

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 4
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->b:Landroidx/appcompat/widget/SearchView;

    .line 6
    iget-boolean p2, p1, Landroidx/appcompat/widget/SearchView;->A:Z

    .line 8
    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/SearchView;->o(Z)V

    .line 11
    iget-object p2, p1, Landroidx/appcompat/widget/SearchView;->O:Landroidx/appcompat/widget/SearchView$b;

    .line 13
    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 16
    iget-object p2, p1, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    .line 18
    invoke-virtual {p2}, Landroid/view/View;->hasFocus()Z

    .line 21
    move-result p2

    .line 22
    if-eqz p2, :cond_1a

    .line 24
    invoke-virtual {p1}, Landroidx/appcompat/widget/SearchView;->d()V

    .line 27
    :cond_1a
    return-void
.end method

.method public final onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .registers 5

    .line 1
    const/4 v0, 0x4

    .line 2
    if-ne p1, v0, :cond_3f

    .line 4
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x1

    .line 9
    if-nez v0, :cond_1a

    .line 11
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1a

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    .line 20
    move-result-object p1

    .line 21
    if-eqz p1, :cond_19

    .line 23
    invoke-virtual {p1, p2, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 26
    :cond_19
    return v1

    .line 27
    :cond_1a
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    .line 30
    move-result v0

    .line 31
    if-ne v0, v1, :cond_3f

    .line 33
    invoke-virtual {p0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    .line 36
    move-result-object v0

    .line 37
    if-eqz v0, :cond_29

    .line 39
    invoke-virtual {v0, p2}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    .line 42
    :cond_29
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_3f

    .line 48
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    .line 51
    move-result v0

    .line 52
    if-nez v0, :cond_3f

    .line 54
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->b:Landroidx/appcompat/widget/SearchView;

    .line 56
    invoke-virtual {p1}, Landroidx/appcompat/widget/SearchView;->clearFocus()V

    .line 59
    const/4 p1, 0x0

    .line 60
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setImeVisibility(Z)V

    .line 63
    return v1

    .line 64
    :cond_3f
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    .line 67
    move-result p1

    .line 68
    return p1
.end method

.method public final onWindowFocusChanged(Z)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    .line 4
    if-eqz p1, :cond_30

    .line 6
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->b:Landroidx/appcompat/widget/SearchView;

    .line 8
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_30

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 17
    move-result p1

    .line 18
    if-nez p1, :cond_30

    .line 20
    const/4 p1, 0x1

    .line 21
    iput-boolean p1, p0, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->c:Z

    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 26
    move-result-object v0

    .line 27
    sget-object v1, Landroidx/appcompat/widget/SearchView;->T:Landroidx/appcompat/widget/SearchView$o;

    .line 29
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 36
    move-result-object v0

    .line 37
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 39
    const/4 v1, 0x2

    .line 40
    if-ne v0, v1, :cond_2a

    .line 42
    goto :goto_2b

    .line 43
    :cond_2a
    const/4 p1, 0x0

    .line 44
    :goto_2b
    if-eqz p1, :cond_30

    .line 46
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->a()V

    .line 49
    :cond_30
    return-void
.end method

.method public final performCompletion()V
    .registers 1

    return-void
.end method

.method public final replaceText(Ljava/lang/CharSequence;)V
    .registers 2

    return-void
.end method

.method public setImeVisibility(Z)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "input_method"

    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 13
    const/4 v1, 0x0

    .line 14
    if-nez p1, :cond_1e

    .line 16
    iput-boolean v1, p0, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->c:Z

    .line 18
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->d:Landroidx/appcompat/widget/SearchView$SearchAutoComplete$a;

    .line 20
    invoke-virtual {p0, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 30
    return-void

    .line 31
    :cond_1e
    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_2f

    .line 37
    iput-boolean v1, p0, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->c:Z

    .line 39
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->d:Landroidx/appcompat/widget/SearchView$SearchAutoComplete$a;

    .line 41
    invoke-virtual {p0, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 44
    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 47
    return-void

    .line 48
    :cond_2f
    const/4 p1, 0x1

    .line 49
    iput-boolean p1, p0, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->c:Z

    .line 51
    return-void
.end method

.method public setSearchView(Landroidx/appcompat/widget/SearchView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->b:Landroidx/appcompat/widget/SearchView;

    .line 3
    return-void
.end method

.method public setThreshold(I)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->setThreshold(I)V

    .line 4
    iput p1, p0, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->a:I

    .line 6
    return-void
.end method
