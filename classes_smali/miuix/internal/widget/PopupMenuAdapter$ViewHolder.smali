.class Lmiuix/internal/widget/PopupMenuAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "PopupMenuAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/internal/widget/PopupMenuAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field public icon:Landroid/widget/ImageView;

.field public title:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lmiuix/internal/widget/PopupMenuAdapter$1;)V
    .registers 2

    invoke-direct {p0}, Lmiuix/internal/widget/PopupMenuAdapter$ViewHolder;-><init>()V

    return-void
.end method
