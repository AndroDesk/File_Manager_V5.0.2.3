.class Lcom/fileexplorer/advert/AdManagerController$SingleHolder;
.super Ljava/lang/Object;
.source "AdManagerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fileexplorer/advert/AdManagerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SingleHolder"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/fileexplorer/advert/AdManagerController;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/fileexplorer/advert/AdManagerController;

    .line 3
    invoke-direct {v0}, Lcom/fileexplorer/advert/AdManagerController;-><init>()V

    .line 6
    sput-object v0, Lcom/fileexplorer/advert/AdManagerController$SingleHolder;->INSTANCE:Lcom/fileexplorer/advert/AdManagerController;

    .line 8
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
