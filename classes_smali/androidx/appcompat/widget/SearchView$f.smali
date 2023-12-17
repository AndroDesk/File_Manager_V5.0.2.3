.class public final Landroidx/appcompat/widget/SearchView$f;
.super Ljava/lang/Object;
.source "SearchView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Landroidx/appcompat/widget/SearchView$f;->a:Landroidx/appcompat/widget/SearchView;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView$f;->a:Landroidx/appcompat/widget/SearchView;

    .line 3
    iget-object v1, v0, Landroidx/appcompat/widget/SearchView;->e:Landroid/widget/ImageView;

    .line 5
    if-ne p1, v1, :cond_1d

    .line 7
    const/4 p1, 0x0

    .line 8
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/SearchView;->o(Z)V

    .line 11
    iget-object p1, v0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    .line 13
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 16
    iget-object p1, v0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    .line 18
    const/4 v1, 0x1

    .line 19
    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setImeVisibility(Z)V

    .line 22
    iget-object p1, v0, Landroidx/appcompat/widget/SearchView;->y:Landroid/view/View$OnClickListener;

    .line 24
    if-eqz p1, :cond_7f

    .line 26
    invoke-interface {p1, v0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 29
    goto :goto_7f

    .line 30
    :cond_1d
    iget-object v1, v0, Landroidx/appcompat/widget/SearchView;->g:Landroid/widget/ImageView;

    .line 32
    if-ne p1, v1, :cond_25

    .line 34
    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView;->e()V

    .line 37
    goto :goto_7f

    .line 38
    :cond_25
    iget-object v1, v0, Landroidx/appcompat/widget/SearchView;->f:Landroid/widget/ImageView;

    .line 40
    if-ne p1, v1, :cond_2d

    .line 42
    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView;->i()V

    .line 45
    goto :goto_7f

    .line 46
    :cond_2d
    iget-object v1, v0, Landroidx/appcompat/widget/SearchView;->h:Landroid/widget/ImageView;

    .line 48
    if-ne p1, v1, :cond_78

    .line 50
    iget-object p1, v0, Landroidx/appcompat/widget/SearchView;->M:Landroid/app/SearchableInfo;

    .line 52
    if-nez p1, :cond_36

    .line 54
    goto :goto_7f

    .line 55
    :cond_36
    :try_start_36
    invoke-virtual {p1}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchWebSearch()Z

    .line 58
    move-result v1

    .line 59
    if-eqz v1, :cond_5c

    .line 61
    iget-object v1, v0, Landroidx/appcompat/widget/SearchView;->s:Landroid/content/Intent;

    .line 63
    new-instance v2, Landroid/content/Intent;

    .line 65
    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 68
    invoke-virtual {p1}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    .line 71
    move-result-object p1

    .line 72
    if-nez p1, :cond_4b

    .line 74
    const/4 p1, 0x0

    .line 75
    goto :goto_4f

    .line 76
    :cond_4b
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 79
    move-result-object p1

    .line 80
    :goto_4f
    const-string v1, "calling_package"

    .line 82
    invoke-virtual {v2, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 88
    move-result-object p1

    .line 89
    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 92
    goto :goto_7f

    .line 93
    :cond_5c
    invoke-virtual {p1}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchRecognizer()Z

    .line 96
    move-result v1

    .line 97
    if-eqz v1, :cond_7f

    .line 99
    iget-object v1, v0, Landroidx/appcompat/widget/SearchView;->v:Landroid/content/Intent;

    .line 101
    invoke-virtual {v0, v1, p1}, Landroidx/appcompat/widget/SearchView;->c(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;

    .line 104
    move-result-object p1

    .line 105
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 108
    move-result-object v0

    .line 109
    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_6f
    .catch Landroid/content/ActivityNotFoundException; {:try_start_36 .. :try_end_6f} :catch_70

    .line 112
    goto :goto_7f

    .line 113
    :catch_70
    const-string p1, "SearchView"

    .line 115
    const-string v0, "Could not find voice search activity"

    .line 117
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    goto :goto_7f

    .line 121
    :cond_78
    iget-object v1, v0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    .line 123
    if-ne p1, v1, :cond_7f

    .line 125
    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView;->d()V

    .line 128
    :cond_7f
    :goto_7f
    return-void
.end method
