.class public abstract Lmiuix/navigator/Navigator$Category;
.super Ljava/lang/Object;
.source "Navigator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/navigator/Navigator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Category"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getAdapter()Lmiuix/navigator/adapter/CategoryAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmiuix/navigator/adapter/CategoryAdapter<",
            "+",
            "Lmiuix/navigator/adapter/CategoryAdapter$Item;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFooterId()I
.end method

.method public abstract getId()I
.end method

.method public abstract getTitle()Ljava/lang/CharSequence;
.end method

.method public abstract setAdapter(Lmiuix/navigator/adapter/CategoryAdapter;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiuix/navigator/adapter/CategoryAdapter<",
            "+",
            "Lmiuix/navigator/adapter/CategoryAdapter$Item;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setCollapsable(Z)V
.end method

.method public abstract setNavigatorDragListener(Lmiuix/navigator/draganddrop/NavigatorDragListener;)V
.end method

.method public abstract setTitle(Ljava/lang/CharSequence;)V
.end method
