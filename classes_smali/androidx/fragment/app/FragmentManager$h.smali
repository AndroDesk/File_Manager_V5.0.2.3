.class public final Landroidx/fragment/app/FragmentManager$h;
.super Ljava/lang/Object;
.source "FragmentManager.java"

# interfaces
.implements Landroidx/activity/result/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/FragmentManager;->b(Landroidx/fragment/app/q;Landroidx/fragment/app/n;Landroidx/fragment/app/Fragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/activity/result/a<",
        "Landroidx/activity/result/ActivityResult;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Landroidx/fragment/app/FragmentManager;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentManager;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/fragment/app/FragmentManager$h;->a:Landroidx/fragment/app/FragmentManager;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onActivityResult(Ljava/lang/Object;)V
    .registers 6

    .line 1
    check-cast p1, Landroidx/activity/result/ActivityResult;

    .line 3
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager$h;->a:Landroidx/fragment/app/FragmentManager;

    .line 5
    iget-object v0, v0, Landroidx/fragment/app/FragmentManager;->E:Ljava/util/ArrayDeque;

    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroidx/fragment/app/FragmentManager$LaunchedFragmentInfo;

    .line 13
    const-string v1, "FragmentManager"

    .line 15
    if-nez v0, :cond_25

    .line 17
    new-instance p1, Ljava/lang/StringBuilder;

    .line 19
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    const-string v0, "No Activities were started for result for "

    .line 24
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object p1

    .line 34
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    goto :goto_4f

    .line 38
    :cond_25
    iget-object v2, v0, Landroidx/fragment/app/FragmentManager$LaunchedFragmentInfo;->a:Ljava/lang/String;

    .line 40
    iget v0, v0, Landroidx/fragment/app/FragmentManager$LaunchedFragmentInfo;->b:I

    .line 42
    iget-object v3, p0, Landroidx/fragment/app/FragmentManager$h;->a:Landroidx/fragment/app/FragmentManager;

    .line 44
    iget-object v3, v3, Landroidx/fragment/app/FragmentManager;->c:Landroidx/fragment/app/a0;

    .line 46
    invoke-virtual {v3, v2}, Landroidx/fragment/app/a0;->c(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 49
    move-result-object v3

    .line 50
    if-nez v3, :cond_48

    .line 52
    new-instance p1, Ljava/lang/StringBuilder;

    .line 54
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    const-string v0, "Activity result delivered for unknown Fragment "

    .line 59
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    move-result-object p1

    .line 69
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    goto :goto_4f

    .line 73
    :cond_48
    iget v1, p1, Landroidx/activity/result/ActivityResult;->a:I

    .line 75
    iget-object p1, p1, Landroidx/activity/result/ActivityResult;->b:Landroid/content/Intent;

    .line 77
    invoke-virtual {v3, v0, v1, p1}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 80
    :goto_4f
    return-void
.end method
