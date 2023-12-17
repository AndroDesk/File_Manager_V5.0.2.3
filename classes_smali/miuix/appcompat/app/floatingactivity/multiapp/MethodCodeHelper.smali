.class public Lmiuix/appcompat/app/floatingactivity/multiapp/MethodCodeHelper;
.super Ljava/lang/Object;
.source "MethodCodeHelper.java"


# static fields
.field public static final IDENTITY_INFO_SEPARATOR:Ljava/lang/String; = ":"

.field public static final KEY_REQUEST_IDENTITY:Ljava/lang/String; = "key_request_identity"

.field public static final KEY_TASK_ID:Ljava/lang/String; = "key_task_id"

.field public static final METHOD_CHECK_ABOVE_ACTIVITY_FINISHING:I

.field public static final METHOD_EXECUTE_PREVIOUS_ACTIVITY_SLIDE:I

.field public static final METHOD_EXECUTE_SLIDE:Ljava/lang/String; = "execute_slide"

.field public static final METHOD_GET_PAGE_COUNT:I

.field public static final METHOD_ON_CLOSE_ALL_PAGE:I

.field public static final METHOD_ON_DRAG_END:I

.field public static final METHOD_ON_DRAG_START:I

.field public static final METHOD_ON_FINISH:I

.field public static final METHOD_ON_FINISH_ALL:I

.field public static final METHOD_ON_HIDE_BEHIND_PAGE:I

.field public static final METHOD_PUSH_SNAPSHOT:I

.field public static final METHOD_RESULT_CHECK_FINISHNING:Ljava/lang/String; = "check_finishing"

.field public static final METHOD_STASH_SNAPSHOT:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d9f

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/appcompat/app/floatingactivity/multiapp/MethodCodeHelper;->METHOD_CHECK_ABOVE_ACTIVITY_FINISHING:I

    const v0, 0x92d9c

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/appcompat/app/floatingactivity/multiapp/MethodCodeHelper;->METHOD_EXECUTE_PREVIOUS_ACTIVITY_SLIDE:I

    const v0, 0x92d90

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/appcompat/app/floatingactivity/multiapp/MethodCodeHelper;->METHOD_GET_PAGE_COUNT:I

    const v0, 0x92d9d

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/appcompat/app/floatingactivity/multiapp/MethodCodeHelper;->METHOD_ON_CLOSE_ALL_PAGE:I

    const v0, 0x92d94

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/appcompat/app/floatingactivity/multiapp/MethodCodeHelper;->METHOD_ON_DRAG_END:I

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/appcompat/app/floatingactivity/multiapp/MethodCodeHelper;->METHOD_ON_DRAG_START:I

    const v0, 0x92d92

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/appcompat/app/floatingactivity/multiapp/MethodCodeHelper;->METHOD_ON_FINISH:I

    const v0, 0x92d95

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/appcompat/app/floatingactivity/multiapp/MethodCodeHelper;->METHOD_ON_FINISH_ALL:I

    const v0, 0x92d93

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/appcompat/app/floatingactivity/multiapp/MethodCodeHelper;->METHOD_ON_HIDE_BEHIND_PAGE:I

    const v0, 0x92d9e

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/appcompat/app/floatingactivity/multiapp/MethodCodeHelper;->METHOD_PUSH_SNAPSHOT:I

    const v0, 0x92d91

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/appcompat/app/floatingactivity/multiapp/MethodCodeHelper;->METHOD_STASH_SNAPSHOT:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
