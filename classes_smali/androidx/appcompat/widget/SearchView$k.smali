.class public final Landroidx/appcompat/widget/SearchView$k;
.super Ljava/lang/Object;
.source "SearchView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/SearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "k"
.end annotation


# direct methods
.method public static a(Landroid/widget/AutoCompleteTextView;)V
    .registers 1

    .line 1
    invoke-static {p0}, Landroidx/appcompat/widget/a0;->u(Landroid/widget/AutoCompleteTextView;)V

    .line 4
    return-void
.end method

.method public static b(Landroidx/appcompat/widget/SearchView$SearchAutoComplete;I)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Landroid/widget/AutoCompleteTextView;->setInputMethodMode(I)V

    .line 4
    return-void
.end method
