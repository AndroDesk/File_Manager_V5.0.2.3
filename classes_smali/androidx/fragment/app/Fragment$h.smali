.class public final Landroidx/fragment/app/Fragment$h;
.super Ljava/lang/Object;
.source "Fragment.java"

# interfaces
.implements Lp/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/Fragment;->registerForActivityResult(Lg/a;Landroidx/activity/result/e;Landroidx/activity/result/a;)Landroidx/activity/result/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lp/a<",
        "Ljava/lang/Void;",
        "Landroidx/activity/result/e;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Landroidx/activity/result/e;


# direct methods
.method public constructor <init>(Landroidx/activity/result/e;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/fragment/app/Fragment$h;->a:Landroidx/activity/result/e;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final apply()Landroidx/activity/result/e;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment$h;->a:Landroidx/activity/result/e;

    .line 3
    return-object v0
.end method
