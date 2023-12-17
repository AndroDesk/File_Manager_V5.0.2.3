.class public final Landroidx/appcompat/widget/SearchView$SearchAutoComplete$a;
.super Ljava/lang/Object;
.source "SearchView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/SearchView$SearchAutoComplete;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/SearchView$SearchAutoComplete;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/SearchView$SearchAutoComplete$a;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView$SearchAutoComplete$a;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    .line 3
    iget-boolean v1, v0, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->c:Z

    .line 5
    if-eqz v1, :cond_18

    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 10
    move-result-object v1

    .line 11
    const-string v2, "input_method"

    .line 13
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-virtual {v1, v0, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 23
    iput-boolean v2, v0, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->c:Z

    .line 25
    :cond_18
    return-void
.end method
