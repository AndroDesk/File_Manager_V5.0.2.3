.class Lmiuix/util/HapticFeedbackCompat$1;
.super Ljava/lang/Object;
.source "HapticFeedbackCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/util/HapticFeedbackCompat;->performHapticFeedbackAsync(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/util/HapticFeedbackCompat;

.field public final synthetic val$effectId:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lmiuix/util/HapticFeedbackCompat;I)V
    .registers 3

    iput-object p1, p0, Lmiuix/util/HapticFeedbackCompat$1;->this$0:Lmiuix/util/HapticFeedbackCompat;

    iput p2, p0, Lmiuix/util/HapticFeedbackCompat$1;->val$effectId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lmiuix/util/HapticFeedbackCompat$1;->this$0:Lmiuix/util/HapticFeedbackCompat;

    iget v1, p0, Lmiuix/util/HapticFeedbackCompat$1;->val$effectId:I

    invoke-virtual {v0, v1}, Lmiuix/util/HapticFeedbackCompat;->performHapticFeedback(I)Z

    return-void
.end method