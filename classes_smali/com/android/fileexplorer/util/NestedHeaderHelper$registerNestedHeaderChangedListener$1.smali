.class public final Lcom/android/fileexplorer/util/NestedHeaderHelper$registerNestedHeaderChangedListener$1;
.super Ljava/lang/Object;
.source "NestedHeaderHelper.kt"

# interfaces
.implements Lmiuix/nestedheader/widget/NestedHeaderLayout$NestedHeaderChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/util/NestedHeaderHelper;->registerNestedHeaderChangedListener(Lmiuix/nestedheader/widget/NestedHeaderLayout;Lmiuix/appcompat/app/ActionBar;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $actionBar:Lmiuix/appcompat/app/ActionBar;


# direct methods
.method public constructor <init>(Lmiuix/appcompat/app/ActionBar;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/util/NestedHeaderHelper$registerNestedHeaderChangedListener$1;->$actionBar:Lmiuix/appcompat/app/ActionBar;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onOverViewBlurStateChanged(Z)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/util/NestedHeaderHelper$registerNestedHeaderChangedListener$1;->$actionBar:Lmiuix/appcompat/app/ActionBar;

    .line 3
    if-eqz v0, :cond_e

    .line 5
    const-string v1, "null cannot be cast to non-null type miuix.appcompat.internal.app.widget.ActionBarImpl"

    .line 7
    invoke-static {v0, v1}, Li3/g;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    .line 12
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->updateBackgroundViewBlurState(Z)V

    .line 15
    :cond_e
    return-void
.end method
