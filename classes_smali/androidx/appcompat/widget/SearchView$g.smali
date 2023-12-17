.class public final Landroidx/appcompat/widget/SearchView$g;
.super Ljava/lang/Object;
.source "SearchView.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


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
    iput-object p1, p0, Landroidx/appcompat/widget/SearchView$g;->a:Landroidx/appcompat/widget/SearchView;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 9

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView$g;->a:Landroidx/appcompat/widget/SearchView;

    .line 3
    iget-object v1, v0, Landroidx/appcompat/widget/SearchView;->M:Landroid/app/SearchableInfo;

    .line 5
    const/4 v2, 0x0

    .line 6
    if-nez v1, :cond_8

    .line 8
    return v2

    .line 9
    :cond_8
    iget-object v0, v0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    .line 11
    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    .line 14
    move-result v0

    .line 15
    const/16 v1, 0x42

    .line 17
    const/4 v3, 0x1

    .line 18
    if-eqz v0, :cond_7f

    .line 20
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView$g;->a:Landroidx/appcompat/widget/SearchView;

    .line 22
    iget-object v0, v0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    .line 24
    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getListSelection()I

    .line 27
    move-result v0

    .line 28
    const/4 v4, -0x1

    .line 29
    if-eq v0, v4, :cond_7f

    .line 31
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView$g;->a:Landroidx/appcompat/widget/SearchView;

    .line 33
    iget-object v0, p1, Landroidx/appcompat/widget/SearchView;->M:Landroid/app/SearchableInfo;

    .line 35
    if-nez v0, :cond_25

    .line 37
    goto :goto_7e

    .line 38
    :cond_25
    iget-object v0, p1, Landroidx/appcompat/widget/SearchView;->B:Lq0/a;

    .line 40
    if-nez v0, :cond_2a

    .line 42
    goto :goto_7e

    .line 43
    :cond_2a
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 46
    move-result v0

    .line 47
    if-nez v0, :cond_7e

    .line 49
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    .line 52
    move-result p3

    .line 53
    if-eqz p3, :cond_7e

    .line 55
    if-eq p2, v1, :cond_74

    .line 57
    const/16 p3, 0x54

    .line 59
    if-eq p2, p3, :cond_74

    .line 61
    const/16 p3, 0x3d

    .line 63
    if-ne p2, p3, :cond_41

    .line 65
    goto :goto_74

    .line 66
    :cond_41
    const/16 p3, 0x15

    .line 68
    if-eq p2, p3, :cond_54

    .line 70
    const/16 v0, 0x16

    .line 72
    if-ne p2, v0, :cond_4a

    .line 74
    goto :goto_54

    .line 75
    :cond_4a
    const/16 p3, 0x13

    .line 77
    if-ne p2, p3, :cond_7e

    .line 79
    iget-object p1, p1, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    .line 81
    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->getListSelection()I

    .line 84
    goto :goto_7e

    .line 85
    :cond_54
    :goto_54
    if-ne p2, p3, :cond_58

    .line 87
    move p2, v2

    .line 88
    goto :goto_5e

    .line 89
    :cond_58
    iget-object p2, p1, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    .line 91
    invoke-virtual {p2}, Landroid/widget/TextView;->length()I

    .line 94
    move-result p2

    .line 95
    :goto_5e
    iget-object p3, p1, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    .line 97
    invoke-virtual {p3, p2}, Landroid/widget/EditText;->setSelection(I)V

    .line 100
    iget-object p2, p1, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    .line 102
    invoke-virtual {p2, v2}, Landroid/widget/AutoCompleteTextView;->setListSelection(I)V

    .line 105
    iget-object p2, p1, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    .line 107
    invoke-virtual {p2}, Landroid/widget/AutoCompleteTextView;->clearListSelection()V

    .line 110
    iget-object p1, p1, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    .line 112
    invoke-virtual {p1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->a()V

    .line 115
    move v2, v3

    .line 116
    goto :goto_7e

    .line 117
    :cond_74
    :goto_74
    iget-object p2, p1, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    .line 119
    invoke-virtual {p2}, Landroid/widget/AutoCompleteTextView;->getListSelection()I

    .line 122
    move-result p2

    .line 123
    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/SearchView;->f(I)Z

    .line 126
    move-result v2

    .line 127
    :cond_7e
    :goto_7e
    return v2

    .line 128
    :cond_7f
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView$g;->a:Landroidx/appcompat/widget/SearchView;

    .line 130
    iget-object v0, v0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    .line 132
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 135
    move-result-object v0

    .line 136
    invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    .line 139
    move-result v0

    .line 140
    if-nez v0, :cond_8f

    .line 142
    move v0, v3

    .line 143
    goto :goto_90

    .line 144
    :cond_8f
    move v0, v2

    .line 145
    :goto_90
    if-nez v0, :cond_be

    .line 147
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    .line 150
    move-result v0

    .line 151
    if-eqz v0, :cond_be

    .line 153
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 156
    move-result p3

    .line 157
    if-ne p3, v3, :cond_be

    .line 159
    if-ne p2, v1, :cond_be

    .line 161
    invoke-virtual {p1}, Landroid/view/View;->cancelLongPress()V

    .line 164
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView$g;->a:Landroidx/appcompat/widget/SearchView;

    .line 166
    iget-object p2, p1, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    .line 168
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 171
    move-result-object p2

    .line 172
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 175
    move-result-object p2

    .line 176
    const/4 p3, 0x0

    .line 177
    const-string v0, "android.intent.action.SEARCH"

    .line 179
    invoke-virtual {p1, v0, p3, p3, p2}, Landroidx/appcompat/widget/SearchView;->b(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 182
    move-result-object p2

    .line 183
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 186
    move-result-object p1

    .line 187
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 190
    return v3

    .line 191
    :cond_be
    return v2
.end method
