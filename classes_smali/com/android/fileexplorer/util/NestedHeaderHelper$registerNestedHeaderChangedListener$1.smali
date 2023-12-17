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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lmiuix/appcompat/app/ActionBar;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/util/NestedHeaderHelper$registerNestedHeaderChangedListener$1;->$actionBar:Lmiuix/appcompat/app/ActionBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOverViewBlurStateChanged(Z)V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/util/NestedHeaderHelper$registerNestedHeaderChangedListener$1;->$actionBar:Lmiuix/appcompat/app/ActionBar;

    if-eqz v0, :cond_e

    const-string v1, "null cannot be cast to non-null type miuix.appcompat.internal.app.widget.ActionBarImpl"

    invoke-static {v0, v1}, Li3/g;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->updateBackgroundViewBlurState(Z)V

    :cond_e
    return-void
.end method
