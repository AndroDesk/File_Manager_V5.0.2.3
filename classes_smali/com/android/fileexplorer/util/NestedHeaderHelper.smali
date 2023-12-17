.class public final Lcom/android/fileexplorer/util/NestedHeaderHelper;
.super Ljava/lang/Object;
.source "NestedHeaderHelper.kt"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final registerNestedHeaderChangedListener(Lmiuix/nestedheader/widget/NestedHeaderLayout;Lmiuix/appcompat/app/ActionBar;)V
    .registers 4
    .param p1  # Lmiuix/nestedheader/widget/NestedHeaderLayout;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2  # Lmiuix/appcompat/app/ActionBar;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "nested"

    .line 3
    invoke-static {p1, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance v0, Lcom/android/fileexplorer/util/NestedHeaderHelper$registerNestedHeaderChangedListener$1;

    .line 8
    invoke-direct {v0, p2}, Lcom/android/fileexplorer/util/NestedHeaderHelper$registerNestedHeaderChangedListener$1;-><init>(Lmiuix/appcompat/app/ActionBar;)V

    .line 11
    invoke-virtual {p1, v0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->setNestedHeaderChangedListener(Lmiuix/nestedheader/widget/NestedHeaderLayout$NestedHeaderChangedListener;)V

    .line 14
    return-void
.end method

.method public final unRegisterNestedHeaderChangedListener(Lmiuix/nestedheader/widget/NestedHeaderLayout;)V
    .registers 3
    .param p1  # Lmiuix/nestedheader/widget/NestedHeaderLayout;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "nested"

    .line 3
    invoke-static {p1, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->removeNestedHeaderChangedListener()V

    .line 9
    return-void
.end method
