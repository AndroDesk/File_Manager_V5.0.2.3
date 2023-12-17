.class public final Landroidx/appcompat/widget/SearchView$a;
.super Ljava/lang/Object;
.source "SearchView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/SearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/appcompat/widget/SearchView;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/SearchView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/SearchView$a;->a:Landroidx/appcompat/widget/SearchView;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .registers 2

    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 6

    .line 1
    iget-object p2, p0, Landroidx/appcompat/widget/SearchView$a;->a:Landroidx/appcompat/widget/SearchView;

    .line 3
    iget-object p3, p2, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    .line 5
    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 8
    move-result-object p3

    .line 9
    iput-object p3, p2, Landroidx/appcompat/widget/SearchView;->J:Ljava/lang/CharSequence;

    .line 11
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    move-result p3

    .line 15
    xor-int/lit8 p3, p3, 0x1

    .line 17
    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/SearchView;->n(Z)V

    .line 20
    xor-int/lit8 p3, p3, 0x1

    .line 22
    iget-boolean p4, p2, Landroidx/appcompat/widget/SearchView;->H:Z

    .line 24
    const/16 v0, 0x8

    .line 26
    if-eqz p4, :cond_28

    .line 28
    iget-boolean p4, p2, Landroidx/appcompat/widget/SearchView;->A:Z

    .line 30
    if-nez p4, :cond_28

    .line 32
    if-eqz p3, :cond_28

    .line 34
    const/4 p3, 0x0

    .line 35
    iget-object p4, p2, Landroidx/appcompat/widget/SearchView;->f:Landroid/widget/ImageView;

    .line 37
    invoke-virtual {p4, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 40
    move v0, p3

    .line 41
    :cond_28
    iget-object p3, p2, Landroidx/appcompat/widget/SearchView;->h:Landroid/widget/ImageView;

    .line 43
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 46
    invoke-virtual {p2}, Landroidx/appcompat/widget/SearchView;->j()V

    .line 49
    invoke-virtual {p2}, Landroidx/appcompat/widget/SearchView;->m()V

    .line 52
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 58
    move-result-object p1

    .line 59
    iput-object p1, p2, Landroidx/appcompat/widget/SearchView;->I:Ljava/lang/String;

    .line 61
    return-void
.end method
