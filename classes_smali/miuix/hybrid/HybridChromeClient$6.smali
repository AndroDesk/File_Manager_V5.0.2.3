.class Lmiuix/hybrid/HybridChromeClient$6;
.super Ljava/lang/Object;
.source "HybridChromeClient.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/hybrid/HybridChromeClient;->onJsConfirm(Lmiuix/hybrid/HybridView;Ljava/lang/String;Ljava/lang/String;Lmiuix/hybrid/JsResult;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/hybrid/HybridChromeClient;

.field public final synthetic val$result:Lmiuix/hybrid/JsResult;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lmiuix/hybrid/HybridChromeClient;Lmiuix/hybrid/JsResult;)V
    .registers 3

    iput-object p1, p0, Lmiuix/hybrid/HybridChromeClient$6;->this$0:Lmiuix/hybrid/HybridChromeClient;

    iput-object p2, p0, Lmiuix/hybrid/HybridChromeClient$6;->val$result:Lmiuix/hybrid/JsResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    iget-object p1, p0, Lmiuix/hybrid/HybridChromeClient$6;->val$result:Lmiuix/hybrid/JsResult;

    invoke-virtual {p1}, Lmiuix/hybrid/JsResult;->cancel()V

    return-void
.end method