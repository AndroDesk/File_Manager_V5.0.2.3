.class public final Landroidx/fragment/app/FragmentManager$a;
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
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "Ljava/lang/Boolean;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Landroidx/fragment/app/FragmentManager;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentManager;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/fragment/app/FragmentManager$a;->a:Landroidx/fragment/app/FragmentManager;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onActivityResult(Ljava/lang/Object;)V
    .registers 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SyntheticAccessor"
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/util/Map;

    .line 3
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    new-array v2, v1, [Ljava/lang/String;

    .line 10
    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 13
    move-result-object v0

    .line 14
    check-cast v0, [Ljava/lang/String;

    .line 16
    new-instance v2, Ljava/util/ArrayList;

    .line 18
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 21
    move-result-object p1

    .line 22
    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 25
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 28
    move-result p1

    .line 29
    new-array p1, p1, [I

    .line 31
    move v3, v1

    .line 32
    :goto_1f
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 35
    move-result v4

    .line 36
    if-ge v3, v4, :cond_39

    .line 38
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 41
    move-result-object v4

    .line 42
    check-cast v4, Ljava/lang/Boolean;

    .line 44
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 47
    move-result v4

    .line 48
    if-eqz v4, :cond_33

    .line 50
    move v4, v1

    .line 51
    goto :goto_34

    .line 52
    :cond_33
    const/4 v4, -0x1

    .line 53
    :goto_34
    aput v4, p1, v3

    .line 55
    add-int/lit8 v3, v3, 0x1

    .line 57
    goto :goto_1f

    .line 58
    :cond_39
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager$a;->a:Landroidx/fragment/app/FragmentManager;

    .line 60
    iget-object v1, v1, Landroidx/fragment/app/FragmentManager;->E:Ljava/util/ArrayDeque;

    .line 62
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    .line 65
    move-result-object v1

    .line 66
    check-cast v1, Landroidx/fragment/app/FragmentManager$LaunchedFragmentInfo;

    .line 68
    const-string v2, "FragmentManager"

    .line 70
    if-nez v1, :cond_5c

    .line 72
    new-instance p1, Ljava/lang/StringBuilder;

    .line 74
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    const-string v0, "No permissions were requested for "

    .line 79
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    move-result-object p1

    .line 89
    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    goto :goto_82

    .line 93
    :cond_5c
    iget-object v3, v1, Landroidx/fragment/app/FragmentManager$LaunchedFragmentInfo;->a:Ljava/lang/String;

    .line 95
    iget v1, v1, Landroidx/fragment/app/FragmentManager$LaunchedFragmentInfo;->b:I

    .line 97
    iget-object v4, p0, Landroidx/fragment/app/FragmentManager$a;->a:Landroidx/fragment/app/FragmentManager;

    .line 99
    iget-object v4, v4, Landroidx/fragment/app/FragmentManager;->c:Landroidx/fragment/app/a0;

    .line 101
    invoke-virtual {v4, v3}, Landroidx/fragment/app/a0;->c(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 104
    move-result-object v4

    .line 105
    if-nez v4, :cond_7f

    .line 107
    new-instance p1, Ljava/lang/StringBuilder;

    .line 109
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    const-string v0, "Permission request result delivered for unknown Fragment "

    .line 114
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    move-result-object p1

    .line 124
    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    goto :goto_82

    .line 128
    :cond_7f
    invoke-virtual {v4, v1, v0, p1}, Landroidx/fragment/app/Fragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 131
    :goto_82
    return-void
.end method
