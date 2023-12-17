.class Landroidx/activity/result/ActivityResultRegistry$1;
.super Ljava/lang/Object;
.source "ActivityResultRegistry.java"

# interfaces
.implements Landroidx/lifecycle/k;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Landroidx/activity/result/a;

.field public final synthetic c:Lg/a;

.field public final synthetic d:Landroidx/activity/result/e;


# direct methods
.method public constructor <init>(Landroidx/activity/result/e;Ljava/lang/String;Landroidx/activity/result/a;Lg/a;)V
    .registers 5

    .line 1
    iput-object p1, p0, Landroidx/activity/result/ActivityResultRegistry$1;->d:Landroidx/activity/result/e;

    .line 3
    iput-object p2, p0, Landroidx/activity/result/ActivityResultRegistry$1;->a:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Landroidx/activity/result/ActivityResultRegistry$1;->b:Landroidx/activity/result/a;

    .line 7
    iput-object p4, p0, Landroidx/activity/result/ActivityResultRegistry$1;->c:Lg/a;

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public final onStateChanged(Landroidx/lifecycle/m;Landroidx/lifecycle/Lifecycle$Event;)V
    .registers 6

    .line 1
    sget-object p1, Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;

    .line 3
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_65

    .line 9
    iget-object p1, p0, Landroidx/activity/result/ActivityResultRegistry$1;->d:Landroidx/activity/result/e;

    .line 11
    iget-object p1, p1, Landroidx/activity/result/e;->f:Ljava/util/HashMap;

    .line 13
    iget-object p2, p0, Landroidx/activity/result/ActivityResultRegistry$1;->a:Ljava/lang/String;

    .line 15
    new-instance v0, Landroidx/activity/result/e$a;

    .line 17
    iget-object v1, p0, Landroidx/activity/result/ActivityResultRegistry$1;->b:Landroidx/activity/result/a;

    .line 19
    iget-object v2, p0, Landroidx/activity/result/ActivityResultRegistry$1;->c:Lg/a;

    .line 21
    invoke-direct {v0, v2, v1}, Landroidx/activity/result/e$a;-><init>(Lg/a;Landroidx/activity/result/a;)V

    .line 24
    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    iget-object p1, p0, Landroidx/activity/result/ActivityResultRegistry$1;->d:Landroidx/activity/result/e;

    .line 29
    iget-object p1, p1, Landroidx/activity/result/e;->g:Ljava/util/HashMap;

    .line 31
    iget-object p2, p0, Landroidx/activity/result/ActivityResultRegistry$1;->a:Ljava/lang/String;

    .line 33
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 36
    move-result p1

    .line 37
    if-eqz p1, :cond_3e

    .line 39
    iget-object p1, p0, Landroidx/activity/result/ActivityResultRegistry$1;->d:Landroidx/activity/result/e;

    .line 41
    iget-object p1, p1, Landroidx/activity/result/e;->g:Ljava/util/HashMap;

    .line 43
    iget-object p2, p0, Landroidx/activity/result/ActivityResultRegistry$1;->a:Ljava/lang/String;

    .line 45
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    move-result-object p1

    .line 49
    iget-object p2, p0, Landroidx/activity/result/ActivityResultRegistry$1;->d:Landroidx/activity/result/e;

    .line 51
    iget-object p2, p2, Landroidx/activity/result/e;->g:Ljava/util/HashMap;

    .line 53
    iget-object v0, p0, Landroidx/activity/result/ActivityResultRegistry$1;->a:Ljava/lang/String;

    .line 55
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget-object p2, p0, Landroidx/activity/result/ActivityResultRegistry$1;->b:Landroidx/activity/result/a;

    .line 60
    invoke-interface {p2, p1}, Landroidx/activity/result/a;->onActivityResult(Ljava/lang/Object;)V

    .line 63
    :cond_3e
    iget-object p1, p0, Landroidx/activity/result/ActivityResultRegistry$1;->d:Landroidx/activity/result/e;

    .line 65
    iget-object p1, p1, Landroidx/activity/result/e;->h:Landroid/os/Bundle;

    .line 67
    iget-object p2, p0, Landroidx/activity/result/ActivityResultRegistry$1;->a:Ljava/lang/String;

    .line 69
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 72
    move-result-object p1

    .line 73
    check-cast p1, Landroidx/activity/result/ActivityResult;

    .line 75
    if-eqz p1, :cond_86

    .line 77
    iget-object p2, p0, Landroidx/activity/result/ActivityResultRegistry$1;->d:Landroidx/activity/result/e;

    .line 79
    iget-object p2, p2, Landroidx/activity/result/e;->h:Landroid/os/Bundle;

    .line 81
    iget-object v0, p0, Landroidx/activity/result/ActivityResultRegistry$1;->a:Ljava/lang/String;

    .line 83
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 86
    iget-object p2, p0, Landroidx/activity/result/ActivityResultRegistry$1;->b:Landroidx/activity/result/a;

    .line 88
    iget-object v0, p0, Landroidx/activity/result/ActivityResultRegistry$1;->c:Lg/a;

    .line 90
    iget v1, p1, Landroidx/activity/result/ActivityResult;->a:I

    .line 92
    iget-object p1, p1, Landroidx/activity/result/ActivityResult;->b:Landroid/content/Intent;

    .line 94
    invoke-virtual {v0, v1, p1}, Lg/a;->c(ILandroid/content/Intent;)Ljava/lang/Object;

    .line 97
    move-result-object p1

    .line 98
    invoke-interface {p2, p1}, Landroidx/activity/result/a;->onActivityResult(Ljava/lang/Object;)V

    .line 101
    goto :goto_86

    .line 102
    :cond_65
    sget-object p1, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    .line 104
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 107
    move-result p1

    .line 108
    if-eqz p1, :cond_77

    .line 110
    iget-object p1, p0, Landroidx/activity/result/ActivityResultRegistry$1;->d:Landroidx/activity/result/e;

    .line 112
    iget-object p1, p1, Landroidx/activity/result/e;->f:Ljava/util/HashMap;

    .line 114
    iget-object p2, p0, Landroidx/activity/result/ActivityResultRegistry$1;->a:Ljava/lang/String;

    .line 116
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    goto :goto_86

    .line 120
    :cond_77
    sget-object p1, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    .line 122
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 125
    move-result p1

    .line 126
    if-eqz p1, :cond_86

    .line 128
    iget-object p1, p0, Landroidx/activity/result/ActivityResultRegistry$1;->d:Landroidx/activity/result/e;

    .line 130
    iget-object p2, p0, Landroidx/activity/result/ActivityResultRegistry$1;->a:Ljava/lang/String;

    .line 132
    invoke-virtual {p1, p2}, Landroidx/activity/result/e;->f(Ljava/lang/String;)V

    .line 135
    :cond_86
    :goto_86
    return-void
.end method
